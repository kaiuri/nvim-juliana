<img src="https://user-images.githubusercontent.com/19148108/216947306-96371fa0-61be-4f3b-832a-60efcadc8859.jpg" width="98%">

# nvim-juliana

Port of Sublime's Mariana Theme for Neovim for short attention span devs with Tree-sitter support.

## Screenshots

<img src="https://user-images.githubusercontent.com/19148108/216946234-54587fc1-d4cc-460e-b207-bab421b60a23.png" width="98%">

## Usage

### Installation

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

### Configuration

```lua
require 'nvim-juliana'.setup {
  colors = {
    bg1 = '#3b454e',
    bg2 = '#303841',
    bg3 = '#2e353e',
    fg1 = '#ffffff',
    fg2 = '#d8dee9',
    fg3 = '#a6acb8',
    fg4 = '#46525c',
    shade1 = '#2f373f',
    shade2 = '#2e363e',
    blue1 = '#95b2d6',
    blue2 = '#5c99d6',
    cyan = '#5fb4b4',
    green = '#99c794',
    magenta = '#cc8ec6',
    orange = '#f97b58',
    red = '#ec5f66',
    yellow1 = '#fac761',
    yellow2 = '#f9ae58',
    yellow3 = '#ee932b',
  }
}
```

- Palette

```lua
require('nvim-juliana').colors()
```

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
