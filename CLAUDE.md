# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal macOS dotfiles managed via symlinks. No package manager (stow, etc.) — a single `install.sh` script handles everything.

## Installation

```bash
./install.sh
```

This script is idempotent and does:
1. Installs Homebrew if missing, runs `brew bundle install --file=./Brewfile`
2. Installs TPM (Tmux Plugin Manager) to `~/.tmux/plugins/tpm`
3. Symlinks `bin/` → `~/.bin`
4. Symlinks each item in `config/` → `~/.config/<item>`
5. Symlinks each file in `home/` → `~/.<filename>` (dot-prefixed)
6. Sets default apps via `duti` (Zed for all common text/code file types)

Re-run after adding files to `config/` or `home/`.

## Structure

- **`home/`** — Shell dotfiles symlinked as `~/.<name>` (zshrc, gitconfig, tmux.conf, aliases, functions, etc.)
- **`config/`** — App configs symlinked into `~/.config/` (nvim, ghostty, starship.toml)
- **`bin/`** — Custom scripts symlinked as `~/.bin` (bri, gitgrepsed, pysetup)
- **`Brewfile`** — Homebrew packages, casks, and dependencies

## Shell Stack

- **Zsh** with Zinit plugin manager (syntax-highlighting, completions, autosuggestions)
- **Starship** prompt
- **Atuin** for shell history
- Tools initialized in zshrc: pyenv, goenv, jenv, direnv, autojump, asdf

## Key Configs

- **Neovim:** LazyVim-based, plugins in `config/nvim/lua/plugins/`
- **Tmux:** Prefix is `C-s`, vim-style nav, mouse on, tpm + tmux-resurrect
- **Git:** GPG signing, merge ff-only, force-with-lease alias, SSH for GitLab
- **Ghostty:** Lovelace dark theme, MartianMono Nerd Font
- **Zed:** Set as default app for all common text/code file types via `duti`

## Conventions

- When adding a new dotfile, place it in `home/` (for `~/.<name>`) or `config/` (for `~/.config/<name>`), then re-run `install.sh`
- Custom shell aliases go in `home/aliases`, functions in `home/functions`
- Never commit `.global.env` — it contains secrets and is gitignored
