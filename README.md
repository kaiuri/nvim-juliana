# nvim-juliana

Port of Sublime's Mariana Theme for Neovim for short attention span devs with Tree-sitter support.

<details>
<summary><h2>📸 Screenshot</h2></summary>
<img src="https://user-images.githubusercontent.com/19148108/216946234-54587fc1-d4cc-460e-b207-bab421b60a23.png" width="80%"/>
</details>

<!--#region: palette-->

| name        |                           hex                            | name         |                           hex                            |
| :---------- | :------------------------------------------------------: | :----------- | :------------------------------------------------------: |
| fg1         | ![#ffffff](https://placehold.co/15x15/ffffff/ffffff.png) | fg2          | ![#d8dee9](https://placehold.co/15x15/d8dee9/d8dee9.png) |
| fg3         | ![#a6acb9](https://placehold.co/15x15/a6acb9/a6acb9.png) | fg4          | ![#46525c](https://placehold.co/15x15/46525c/46525c.png) |
| bg1         | ![#444e59](https://placehold.co/15x15/444e59/444e59.png) | selection_bg | ![#3f4750](https://placehold.co/15x15/3f4750/3f4750.png) |
| bg2         | ![#303841](https://placehold.co/15x15/303841/303841.png) | bg3          | ![#2e353e](https://placehold.co/15x15/2e353e/2e353e.png) |
| diff_text   | ![#373f48](https://placehold.co/15x15/373f48/373f48.png) | diff_change  | ![#585249](https://placehold.co/15x15/585249/585249.png) |
| diff_remove | ![#4f434a](https://placehold.co/15x15/4f434a/4f434a.png) | text_fg      | ![#d9d9d9](https://placehold.co/15x15/d9d9d9/d9d9d9.png) |
| yellow1     | ![#fac761](https://placehold.co/15x15/fac761/fac761.png) | yellow2      | ![#f9ae58](https://placehold.co/15x15/f9ae58/f9ae58.png) |
| yellow3     | ![#ee932b](https://placehold.co/15x15/ee932b/ee932b.png) | green        | ![#99c794](https://placehold.co/15x15/99c794/99c794.png) |
| magenta     | ![#c695c6](https://placehold.co/15x15/c695c6/c695c6.png) | orange       | ![#f97b58](https://placehold.co/15x15/f97b58/f97b58.png) |
| red1        | ![#c76b70](https://placehold.co/15x15/c76b70/c76b70.png) | red2         | ![#ec5f66](https://placehold.co/15x15/ec5f66/ec5f66.png) |
| blue1       | ![#95b2d6](https://placehold.co/15x15/95b2d6/95b2d6.png) | blue2        | ![#5c99d6](https://placehold.co/15x15/5c99d6/5c99d6.png) |
| cyan1       | ![#87c7c7](https://placehold.co/15x15/87c7c7/87c7c7.png) | cyan2        | ![#5fb4b4](https://placehold.co/15x15/5fb4b4/5fb4b4.png) |

<!--#endregion-->

## ⚡️ Requirements

- `NVIM v0.10.0-dev`.
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - For better syntax highlighting.

## 📦 Installation

Plug it with your favorite plugin manager.

- [Packer](https://github.com/wbthomason/packer.nvim)

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

## 🛠 Configuration

```lua
{
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

To get the theme's palette, you can use the `colors()` function:

```lua
require('nvim-juliana').colors()
```

## 🎨 Examples

You can also set it to use other palettes like, for example:

<details><summary><h4>Gruvbox</h4></summary>

```lua
---@generic K: "light" | "dark"
---@param mode K
local gruvbox = function(mode)
  ---@param tbl table<`K`, string>
  ---@return string
  local function pick(tbl)
    return tbl[mode]
  end
  return {
    bg1          = pick { light = '#fff7d5', dark = '#32302e' },
    bg2          = pick { light = '#fff5cb', dark = '#282828' },
    bg3          = pick { light = '#fff2bc', dark = '#242424' },
    blue1        = pick { light = '#076578', dark = '#83a598' },
    blue2        = pick { light = '#074f78', dark = '#458588' },
    cyan1        = pick { light = '#689d69', dark = '#8ec07c' },
    cyan2        = pick { light = '#23693e', dark = '#689d6a' },
    diff_add     = pick { light = '#c7d4c4', dark = '#343427' },
    diff_change  = pick { light = '#eadba9', dark = '#3e3428' },
    diff_remove  = pick { light = '#eac4a9', dark = '#3c2828' },
    diff_text    = pick { light = '#ffe789', dark = '#32302e' },
    fg1          = pick { light = '#282828', dark = '#fff5cb' },
    fg2          = pick { light = '#353535', dark = '#ebdbb2' },
    fg3          = pick { light = '#797467', dark = '#928374' },
    fg4          = pick { light = '#938e80', dark = '#665c54' },
    green        = pick { light = '#228b22', dark = '#a8a920' },
    magenta      = pick { light = '#8f3f71', dark = '#c2748f' },
    orange       = pick { light = '#f71d05', dark = '#fb4834' },
    red1         = pick { light = '#cc241d', dark = '#d44333' },
    red2         = pick { light = '#9d0006', dark = '#cc231d' },
    selection_bg = pick { light = '#ffeda3', dark = '#423d39' },
    text_fg      = pick { light = '#282828', dark = '#eadbb5' },
    yellow1      = pick { light = '#cba200', dark = '#fabd2f' },
    yellow2      = pick { light = '#ab7b1a', dark = '#e8ab28' },
    yellow3      = pick { light = '#996814', dark = '#d79a21' },
  }
end

require('nvim-juliana').setup (
  { colors = gruvbox('dark') }
)
vim.cmd.colorscheme 'juliana'
```

</details>

<img src="https://user-images.githubusercontent.com/19148108/234592580-8e51c824-66be-4072-a4fa-99e1897203cc.png" width="50%" />

## 🧩 Plugin Support

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

## 🛒 Extras

- Alacritty: There's a theme for [Alacritty](https://github.com/alacritty/alacritty/) available at [extras](./extras/juliana_alacritty.yml).

## 📜 Contributing

- If any language is being poorly supported, please make a new issue attached with an image of how that language looks on Sublime-Text.
- If a plugin you use isn't rightly supported, please, make a new issue attached with a link to said plugin and I'll do my best to support it.
- Issues that have been inactive for more than 10 days are considered stale and will be closed if they aren't bug related.
- Use the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) style for your commits, that's it.

## Credits

- [Mariana - Sublime HQ Pty Ltd, Dmitri Voronianski](http://www.sublimetext.com/).
- [Todd Wolfson](https://github.com/twolfson/sublime-files) for the initial [palette](https://github.com/twolfson/sublime-files/blob/master/Packages/Color%20Scheme%20-%20Default/Mariana.sublime-color-scheme).
