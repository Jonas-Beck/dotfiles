# Dotfiles Repository

## Overview

This repository contains my personal dotfiles, including configurations for various tools and applications that I use on a daily basis. Feel free to explore and adapt them to suit your own preferences.

## Table of Contents

<!--toc:start-->

- [Overview](#overview)
- [Table of Contents](#table-of-contents)
- [Requirements](#requirements)
- [Installation](#installation)
- [Included Configurations](#included-configurations)
  - [Neovim](#neovim)
  <!--toc:end-->

## Requirements

- **Neovim:** Version 0.9.0 or greater is required
- **Nerd Font:** Version 3.0 or greater is optional but needed to display some icons.
- **Lazygit:** Optional but recommended for an easier git interface.
- **C Compiler:** Required for nvim-treesitter. Ensure you have a C compiler installed.
- **ripgrep:** For Telescope live grep functionality.

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
   stow .
   ```

## Included Configurations

### Neovim

This Neovim configuration is based on the lazyvim package, customized to fit my needs
