# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository for managing system configuration files across macOS and Linux. It uses symlinks to deploy configuration files from this repo to their target locations in `~/.config`, `~`, and `~/.bin`.

## Installation & Deployment

The primary command for deploying all dotfiles:
```bash
./install.sh
```

This script is idempotent and can be run multiple times safely. It:
- Creates symlinks from `./bin` to `~/.bin`
- Symlinks each directory in `./config/*` to `~/.config/*`
- Symlinks files in `./home/*` to `~/.*` (adds dot prefix)

Package installation via Homebrew (currently commented out in install.sh):
```bash
brew bundle install --file="./Brewfile"
```

## Repository Structure

### Three Main Directories

1. **`./config/`** → symlinked to `~/.config/*`
   - `ghostty/` - Terminal emulator configuration
   - `nvim/` - Neovim configuration
   - `starship.toml` - Starship prompt configuration

2. **`./home/`** → symlinked to `~/.*` (with dot prefix added)
   - `aliases` - Git and Docker aliases
   - `functions` - Shell functions
   - `gitconfig` - Git configuration
   - `gitignore` - Global gitignore
   - `tmux.conf` - tmux configuration
   - `zshrc` - Main zsh configuration file
   - `p10k.zsh` - Powerlevel10k theme config (legacy)

3. **`./bin/`** → symlinked to `~/.bin`
   - Custom utility scripts (bri, gitgrepsed, pysetup)

### Key Configuration Details

**Shell Environment (home/zshrc):**
- Uses Zinit plugin manager for zsh plugins
- Configured for: pyenv, direnv, jenv, autojump, atuin, starship
- References external secrets file: `~/code/colebasaur/dotfiles/.global.env`
- Uses nvim as default editor

**Git Aliases (home/aliases):**
- Standard git shortcuts (gs, gp, gc, etc.)
- FZF integration for branch selection: `gfs`, `gfsa`
- Master/main branch helpers: `gmp` (checkout and pull main/master)

**Tools Stack (from Brewfile):**
- Languages: go, node, python (pyenv)
- Dev tools: docker/colima, kubernetes-cli, neovim, tmux
- CLI utilities: fzf, ripgrep, fd, autojump, direnv
- Editors: VS Code, Zed

## Making Changes

When modifying configuration files:
1. Edit files in this repository (`./config/*`, `./home/*`, `./bin/*`)
2. Run `./install.sh` to update symlinks if new files were added
3. Existing symlinks automatically reflect changes (no reinstall needed)

When testing changes, remember that:
- Shell changes require `source ~/.zshrc` or new shell session
- Symlinks point directly to repo files, so edits take effect immediately
- The install script will not overwrite incorrectly pointed symlinks, only update them
