# Dotfiles Repository

## Overview

This repository contains my personal dotfiles, including configurations for various tools and applications that I use on a daily basis. Feel free to explore and adapt them to suit your own preferences.

## File Structure

To maintain an organized approach to managing dotfiles, I've structured my file system with separate folders for each program's configurations.

## Table of Contents

<!--toc:start-->

- [Overview](#overview)
- [File Structure](#file-structure)
- [Table of Contents](#table-of-contents)
- [Requirements](#requirements)
  - [General](#general)
  - [Neovim](#neovim)
  - [Tmux](#tmux)
- [Installation](#installation)
- [Included Configurations](#included-configurations)
  - [Neovim Config](#neovim-config)
  - [Tmux Config](#tmux-config)
  - [Starship Config](#starship-config)
  - [AeroSpace Config](#aerospace-config)
  <!--toc:end-->

## Requirements

### General

- **Git:** Version 2.19.0 or greater to clone repository
- **Stow:** To symlink all config files
- **Nerd Font:** Version 3.0 or greater is needed to display some icons.

### Neovim

- **Neovim:** Version 0.9.0 or greater is required
- **Lazygit:** Optional but recommended for an easier git interface.
- **C Compiler:** Required for nvim-treesitter. Ensure you have a C compiler installed.
- **ripgrep:** For Telescope live grep functionality.

### Tmux

- **Tmux:** Version 1.9 or greater
- **Tmux Plugin Manage:** [TPM](https://github.com/tmux-plugins/tpm) installed at `~/.tmux/plugins/tpm/tpm`

## Installation

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/jonas-beck/dotfiles.git
   ```

2. **Navigate to the Repository:**

   ```bash
   cd dotfiles
   ```

3. **Install Dotfiles Using Stow:**

   ```bash
   stow */ # Symlink everything

   stow nvim # Symlink only nvim config
   ```

## Included Configurations

### Neovim Config

This Neovim configuration is based on the [LazyVim](https://www.lazyvim.org/) package, customized to fit my needs

### Tmux Config

My Tmux setup utilizes the [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) with the Catpuccino theme and customized keybindings.

Press Prefix (C-a) + I (capital i, as in Install) to fetch the plugins.

### Starship Config

Currently i am using [Omerxx's starship config](https://github.com/omerxx/dotfiles)

### AeroSpace Config

Currently i am using the default AeroSpace config with JankyBorders
