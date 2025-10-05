# Introduction

This is my Neovim configuration, which I use for several devices.
It was build with goal of being simple and also meeting my reqirements.

# Installation

Require `Neovim v0.11.4` or newer.

+ Execute following command in shell.
```bash
git clone https://github.com/KhromovAA/nvim ~/.config/nvim
```
+ Start Neovim and wait for installation.

# Usage

## Commands

+ To update all plugins type `:Lazy` and press `U`.
+ To install LSP for specific language execute `:LspInstall` and choose most prefered one.
+ To install formatter for specific language execute `:NullLsInstall (lang)` and in the `lua/plugins/format.lua` add installed formatter to setup.

## Shortcuts

Some commonly used shortcuts. `<leader>` represents `Space`.

| Shortcut                | Mode          | Description                          |
|-------------------------|---------------|--------------------------------------|
| `jj` or `jk`            | Instert       | Exit insert mode                     |
| `<leader>t`             | Normal        | Open/Close file explorer window      |
| `<leader>tt`            | Normal        | Focus file explorer window if opened |
| `<Tab>` or `<S-Tab>j`   | Normal        | Cycle Tab right                      |
| `<S-Tab>` or `<S-Tab>l` | Normal        | Cycle Tab right                      |
| `<Tab>c`                | Normal        | Close current tab                    |
| `<leader>f`             | Normal        | Format current tab                   |

For other shortcuts see `lua/conf/keymaps.lua`
