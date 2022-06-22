# nvim-mariana

![](./assets/nvim-mariana.png)

## Description

Port of Sublime's Mariana Theme to Neovim, using Lua, for short attention span devs.

## Installation

Requirements: `NVIM v0.8.0-dev`.

Plug it with your favorite plugin manager.

- Packer:

```lua
use 'nvim-mariana'
```

## Usage

- Vimscript:

```vim
colo mariana
```

- Lua:

```lua
vim.cmd('colo mariana')
```

## Configuration

There's not configuration, but I might add a `contrast` one if there's demand. One shouldn't spend too much time tinkering with their .rc files instead of writing code.

## Plugin Support(Tested)

- vim-sneak
- nvim-treesitter
- telescope.nvim
- nvim-cmp - I haven't had any problems.
- indent-blankline.nvim
- nvim-lspconfig
- FTerm.nvim
- nvim-tree.lua
- nvim-web-devicons
- lualine.nvim - on `auto`

## TO-DO

- [ ] Fix markdown code-blocks.

## Requesting for features

If any language is being poorly supported, please make a new issue attached with an image of how that language looks on Sublime-Text.

If a plugin you use isn't rightly supported, please, make a new issue attached with a link to said plugin and I'll do my best to support it.
