# nvim-juliana

Port of Sublime's Mariana Theme for Neovim for short attention span devs with Tree-sitter support.

## Palette

|                                                          |  name  |    hex    |                                                          |  name   |    hex    |
| :------------------------------------------------------: | :----: | :-------: | :------------------------------------------------------: | :-----: | :-------: |
| ![#2e363e](https://placehold.co/15x15/2e363e/2e363e.png) | shade2 | `#2e363e` | ![#95b2d6](https://placehold.co/15x15/95b2d6/95b2d6.png) |  blue1  | `#95b2d6` |
| ![#2f373f](https://placehold.co/15x15/2f373f/2f373f.png) | shade1 | `#2f373f` | ![#5c99d6](https://placehold.co/15x15/5c99d6/5c99d6.png) |  blue2  | `#5c99d6` |
| ![#2e353e](https://placehold.co/15x15/2e353e/2e353e.png) |  bg3   | `#2e353e` | ![#5fb4b4](https://placehold.co/15x15/5fb4b4/5fb4b4.png) |  cyan   | `#5fb4b4` |
| ![#303841](https://placehold.co/15x15/303841/303841.png) |  bg2   | `#303841` | ![#99c794](https://placehold.co/15x15/99c794/99c794.png) |  green  | `#99c794` |
| ![#3b454e](https://placehold.co/15x15/3b454e/3b454e.png) |  bg1   | `#3b454e` | ![#cc8ec6](https://placehold.co/15x15/cc8ec6/cc8ec6.png) | magenta | `#cc8ec6` |
| ![#46525c](https://placehold.co/15x15/46525c/46525c.png) |  fg4   | `#46525c` | ![#f97b58](https://placehold.co/15x15/f97b58/f97b58.png) | orange  | `#f97b58` |
| ![#a6acb8](https://placehold.co/15x15/a6acb8/a6acb8.png) |  fg3   | `#a6acb8` | ![#ec5f66](https://placehold.co/15x15/ec5f66/ec5f66.png) |   red   | `#ec5f66` |
| ![#d8dee9](https://placehold.co/15x15/d8dee9/d8dee9.png) |  fg2   | `#d8dee9` | ![#fac761](https://placehold.co/15x15/fac761/fac761.png) | yellow1 | `#fac761` |
| ![#ffffff](https://placehold.co/15x15/ffffff/ffffff.png) |  fg1   | `#ffffff` | ![#f9ae58](https://placehold.co/15x15/f9ae58/f9ae58.png) | yellow2 | `#f9ae58` |
|                                                          |        |           | ![#ee932b](https://placehold.co/15x15/ee932b/ee932b.png) | yellow3 | `#ee932b` |

## Installation

Requirements: `NVIM v0.9.0-dev`.

Plug it with your favorite plugin manager.

- [Packer](https://github.com/wbthomason/packer.nvim):

```lua
use { 'kaiuri/nvim-juliana',
  config = function()
    require 'nvim-juliana'.setup { --[=[ configuration --]=] }
  end
}
--- then
vim.cmd 'colo juliana'
```

- [Lazy](https://github.com/folke/lazy.nvim)

```lua
{
  'kaiuri/nvim-juliana',
  lazy = false,
  opts = { --[=[ configuration --]=] },
  config = true,
}
```

## Configuration

```lua
require 'nvim-juliana'.setup {
  colors = {
    bg1          = '#444e59',
    bg2          = '#303841',
    bg3          = '#2e353e',
    blue1        = '#95b2d6',
    blue2        = '#5c99d6',
    cyan1        = '#87c7c7',
    cyan2        = '#5fb4b4',
    diff_add     = '#41525a',
    diff_change  = '#585249',
    diff_remove  = '#4f434a',
    diff_text    = '#373f48',
    fg1          = '#ffffff',
    fg2          = '#d8dee9',
    fg3          = '#a6acb9',
    fg4          = '#46525c',
    green        = '#99c794',
    magenta      = '#c695c6',
    orange       = '#f97b58',
    red1         = '#c76b70',
    red2         = '#ec5f66',
    selection_bg = '#3f4750',
    text_fg      = '#d9d9d9',
    yellow1      = '#fac761',
    yellow2      = '#f9ae58',
    yellow3      = '#ee932b',
  }
}
```

- Palette

```lua
require('nvim-juliana').colors()
```

### Examples

Check the [wiki](https://github.com/kaiuri/nvim-juliana/wiki/Wiki#configuration-examples).

## Plugin Support - non-exhaustive list

- [coc-nvim](https://github.com/neoclide/coc.nvim)
- [fennel.vim](https://github.com/bakpakin/fennel.vim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-semantic-tokens](https://github.com/theHamsta/nvim-semantic-tokens)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [vim-sneak](https://github.com/justinmk/vim-sneak)
- and more...

## Extras

- Alacritty: There's a theme for [Alacritty](https://github.com/alacritty/alacritty/) available at [extras](./extras/juliana_alacritty.yml).

## Contributing

- If any language is being poorly supported, please make a new issue attached with an image of how that language looks on Sublime-Text.
- If a plugin you use isn't rightly supported, please, make a new issue attached with a link to said plugin and I'll do my best to support it.
- Issues that have been inactive for more than 10 days are considered stale and will be closed if they aren't bug related.
- Use the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) style for your commits, that's it.

## Credits

- [Mariana - Sublime HQ Pty Ltd, Dmitri Voronianski](http://www.sublimetext.com/).
- [Todd Wolfson](https://github.com/twolfson/sublime-files) for the initial palette.

## Screenshot

<img src="https://user-images.githubusercontent.com/19148108/216946234-54587fc1-d4cc-460e-b207-bab421b60a23.png" width="98%">
