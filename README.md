# Dotfiles

Personal macOS dotfiles managed via symlinks. No package manager — a single `install.sh` script handles everything and is safe to re-run.

## Installation

```bash
./install.sh
```

What it does:
1. Installs Homebrew (if missing) and runs `brew bundle install`
2. Installs TPM (Tmux Plugin Manager)
3. Symlinks `bin/` → `~/.bin`
4. Symlinks each item in `config/` → `~/.config/<item>`
5. Symlinks each file in `home/` → `~/.<filename>` (dot-prefixed)
6. Sets Zed as the default app for common text/code file types via `duti`

Re-run after adding files to `config/` or `home/`.

## Structure

| Path | Symlinked to | Contents |
|------|-------------|----------|
| `home/` | `~/.<filename>` | zshrc, aliases, functions, gitconfig, tmux.conf, gitignore, ignore, pdbrc |
| `config/` | `~/.config/<name>` | nvim/, ghostty/, starship.toml |
| `bin/` | `~/.bin` | bri, gitgrepsed, pysetup |
| `Brewfile` | — | All Homebrew packages, casks, and fonts |

## Shell Stack

- **Zsh** with [Zinit](https://github.com/zdharma-continuum/zinit) — syntax highlighting, completions, autosuggestions
- **Starship** prompt
- **Atuin** for shell history search
- Lazy-loaded version managers: pyenv, goenv, jenv, asdf
- Also initialized: direnv, autojump

## Key Configs

- **Neovim:** LazyVim-based. Custom plugins in `config/nvim/lua/plugins/`
- **Tmux:** Prefix `C-s`, vim-style pane nav, mouse on, TPM + tmux-resurrect
- **Git:** GPG signing, `ff = only`, `push --force-with-lease` alias, SSH rewrite for GitLab
- **Ghostty:** Lovelace dark theme, MartianMono Nerd Font
- **Zed:** Default editor for all common text/code file types

## Adding Dotfiles

- Shell dotfiles (symlinked as `~/.<name>`): add to `home/`, re-run `install.sh`
- App configs (symlinked into `~/.config/`): add to `config/`, re-run `install.sh`
- Shell aliases → `home/aliases`
- Shell functions → `home/functions`
- Secrets → `.global.env` (gitignored, see `.global.env.example`)
