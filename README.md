# Dotfiles

Personal configuration files managed with GNU Stow.

## Include

- fish – Shell configuration
- ghostty – Terminal settings
- zellij – Terminal multiplexer
- helix – Editor configuration
- bat – Syntax-highlighting pager
- niri - Window manager
- zed - Code editor

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
sudo pacman -S clang lldb markdown-oxide ruff

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
