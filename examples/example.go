// Following this article https://www.infoq.com/articles/build-a-container-golang/
package main

import (
	"fmt"
	"os"
	"os/exec"
	"syscall"
)

// Everything must panic on Error.
func must(err error) {
	if err != nil {
		panic(err)
	}
}

// Runs processes as root in a separate namespace.
func main() { // gets a list of args

	switch os.Args[1] {

	case "run":
		parent()

	case "child":
		// if there's already a "child" appended to /proc/self/exe, run child()
		child()

	default:
		panic("Oh crap!")
	}

}

// Fake kernel.
func parent() {
	cmd := exec.Command(
		"/proc/self/exe", // Memory space containing this code PID
		append([]string{"child"}, // we append a child PID to it
			os.Args[2:]...)...) // Args[2:] refers to the child program args

	// Process runs on a clone of UTS, PID and MNT.
	cmd.SysProcAttr = &syscall.SysProcAttr{

		Cloneflags: syscall.CLONE_NEWUTS |
			syscall.CLONE_NEWPID |
			syscall.CLONE_NEWNS,
	}

	cmd.Stdin = os.Stdin

	cmd.Stdout = os.Stdout

	cmd.Stderr = os.Stderr

	if err := cmd.Run(); err != nil {

		fmt.Println("ERROR", err)

		os.Exit(1)

	}
}

// Fake kernel's running processes.
func child() {

	// this will swap the PID into a `sort of` root Fs.
	must(syscall.Mount("rootfs", "rootfs", "", syscall.MS_BIND, ""))

	// add a new dir tree
	must(os.MkdirAll("rootfs/oldrootfs", 0700))

	// make it root to the process
	must(syscall.PivotRoot("rootfs", "rootfs/oldrootfs"))

	// enter it
	must(os.Chdir("/"))

	cmd := exec.Command(os.Args[2], os.Args[3:]...)

	cmd.Stdin = os.Stdin

	cmd.Stdout = os.Stdout

	cmd.Stderr = os.Stderr

	if err := cmd.Run(); err != nil {

		fmt.Println("ERROR", err)

		os.Exit(1)
	}
}

