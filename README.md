# Dotfiles Repository

## Overview

This repository automates the setup of a personalized development environment using **Ansible**. It streamlines the installation, configuration, and updates of development tools and system preferences across machines.

## Features

- 🚀 One-command installation and setup
- 🔄 Automated system configuration
- ⚙️ Ansible for configuration management
- 📦 Automated package installation

## Quick Start

### One-Command Installation

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/jonas-beck/dotfiles/main/bin/dotfiles)"
```

This command will:

1. Install required dependencies
2. Clone this repository
3. Run the Ansible playbook to configure your system

## Directory Structure

```
.
├── bin/                 # Scripts and executables
│   └── dotfiles         # Main installation script
├── roles/               # Ansible roles for different configurations
├── main.yml             # Main Ansible playbook
└── README.md            # Documentation
```

## Installed Components

### Core Tools

- Neovim - Text Editor
- Tmux - Terminal Multiplexer
- Alacritty - Terminal Emulator
- Starship - Shell Prompt

### Development Tools

- Lazygit - Git TUI
- k9s - Kubernetes TUI
- Git Configuration (Personal/Work Profiles)

### Applications

- Arc Browser (macOS)
- Spotify
- Aerospace - Window Manager (macOS)

### Fonts

- Nerd Fonts Collection

## Supported Operating Systems

- **macOS**: Supported ✅
- **Linux**: Not supported ❌
- **Windows WSL**: Not supported ❌

## Acknowledgments

Inspired by:

- [TechDufus's dotfiles](https://github.com/TechDufus/dotfiles)
- [ALT-F4-LLC's dotfiles](https://github.com/ALT-F4-LLC/dotfiles)
