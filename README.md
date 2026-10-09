# Vim Installation Scripts

Simple installation scripts for setting up Vim and Vim themes on Linux systems.

## Installation Options

### Option 1: Install directly using `curl`

Choose the installation you want.

**Install Vim theme:**

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/redhatmurali/vim/main/vim-theme-install.sh)
```

**Install simple Vim configuration:**

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/redhatmurali/vim/main/vim-install-simple.sh)
```

> **Security recommendation:** Review the installation script before running it. The commands above download and execute the scripts directly.

### Option 2: Clone the repository

Clone the repository if you want to inspect or modify the scripts before running them.

```bash
git clone https://github.com/redhatmurali/vim.git
cd vim
```

**Install the Vim theme:**

```bash
chmod +x vim-theme-install.sh
./vim-theme-install.sh
```

**Install the simple Vim configuration:**

```bash
chmod +x vim-install-simple.sh
./vim-install-simple.sh
```

## Available Scripts

| Script | Description |
|---|---|
| `vim-install-simple.sh` | Installs the simple Vim configuration. |
| `vim-theme-install.sh` | Installs the Vim theme configuration. |

## Requirements

- Linux system with a supported package manager.
- Internet connection for downloading packages and configuration files.
- `curl` for Option 1.
- `git` for Option 2.
- Appropriate permissions to install packages.

## Repository Structure

```text
vim/
├── README.md
├── vim-install-simple.sh
└── vim-theme-install.sh
```
