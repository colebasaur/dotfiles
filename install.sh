#!/bin/bash

# Install Homebrew if not present
# if ! command -v brew &>/dev/null; then
#   echo "Homebrew not found. Installing..."
#   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# else
#   echo "Homebrew already installed"
# fi
# echo "Installing packages from Brewfile..."
# brew bundle install --file="./Brewfile"

# Deploy bin
echo "Deploying ./bin -> ~/.bin"
src_dir="$(pwd)/bin"
target_link="$HOME/.bin"
if [ -L "$target_link" ]; then
  if [ "$(readlink "$target_link")" != "$src_dir" ]; then
    echo "Updating symlink: $target_link -> $src_dir"
    ln -sfn "$src_dir" "$target_link"
  else
    echo "Symlink already correct: $target_link -> $src_dir"
  fi
else
  echo "Creating symlink: $target_link -> $src_dir"
  ln -sfn "$src_dir" "$target_link"
fi
echo

# Deploy config directories
echo "Deploying ./config/* to ~/.config/*"
src_dir="$(pwd)/config"
target_dir="$HOME/.config"
for src_file in "$src_dir"/*; do
  filename=$(basename "$src_file")
  target_link="$target_dir/$filename"
  if [ -L "$target_link" ]; then
    if [ "$(readlink "$target_link")" != "$src_file" ]; then
      echo "Updating symlink: $target_link -> $src_file"
      ln -sfn "$src_file" "$target_link"
    else
      echo "Symlink already correct: $target_link -> $src_file"
    fi
  else
    echo "Creating symlink: $target_link -> $src_file"
    ln -sfn "$src_file" "$target_link"
  fi
done
echo

# Deploy home files
echo "Deploying ./home/* to ~/.*"
src_dir="$(pwd)/home"
target_dir="$HOME"
for src_file in "$src_dir"/*; do
  filename=$(basename "$src_file")
  target_link="$target_dir/.$filename"
  if [ -L "$target_link" ]; then
    if [ "$(readlink "$target_link")" != "$src_file" ]; then
      echo "Updating symlink: $target_link -> $src_file"
      ln -sfn "$src_file" "$target_link"
    else
      echo "Symlink already correct: $target_link -> $src_file"
    fi
  else
    echo "Creating symlink: $target_link -> $src_file"
    ln -sfn "$src_file" "$target_link"
  fi
  filename=$(basename "$src_file")
  ln -sf "$src_file" "$target_dir/.$filename"
done

# echo "Setting default applicaitons to open files..."
# # Set VS Code as default for common text files
# duti -s dev.zed.Zed .txt all
# duti -s dev.zed.Zed .md all
# duti -s dev.zed.Zed .log all
# duti -s dev.zed.Zed .json all
# duti -s dev.zed.Zed .xml all
# duti -s dev.zed.Zed .yaml all
# duti -s dev.zed.Zed .yml all
# duti -s dev.zed.Zed .sh all
# duti -s dev.zed.Zed .py all
# duti -s dev.zed.Zed .js all
# duti -s dev.zed.Zed .ts all
# duti -s dev.zed.Zed .css all
# duti -s dev.zed.Zed public.plain-text all
