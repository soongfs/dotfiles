# Dotfiles

Personal configuration files managed with GNU Stow.

## Include

- fish – Shell
- ghostty – Terminal
- zellij – Terminal multiplexer
- helix – Code editor in TUI
- bat – Syntax-highlighting cat clone
- niri - Window manager
- zed - Code editor in GUI
- yazi - File manager

## Setup

```fish
git clone https://github.com/soongfs/dotfiles.git
cd dotfiles
stow fish ghostty # on your need
```

## Dependencies

Archlinux:
```fish
sudo pacman -S fish ghostty zellij helix bat niri zed

# For fish
sudo pacman -S zoxide fzf eza

# For helix
sudo pacman -S clang lldb markdown-oxide ruff taplo-cli jdk-openjdk yaml-language-server
paru -S jdtls

# For niri
paru noctalia
```

## Notes

- Stow creates symlinks into $HOME.

To remove a module:
```fish
stow -D fish
```

 - Make sure to back up any existing conflicting config files before stowing.
