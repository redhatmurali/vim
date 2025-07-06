#!/bin/bash

echo "🔧 Setting up your Vim configuration..."

# 1. Create ~/.vimrc with modern config
cat > ~/.vimrc << 'EOF'
" --- General Settings ---
syntax enable
set number
set relativenumber
set showmatch
set cursorline
set background=dark
set termguicolors

" --- Indentation ---
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" --- Visual Tweaks ---
set nowrap
set scrolloff=5
set wildmenu
set lazyredraw
set incsearch
set hlsearch

" --- Color Scheme ---
let base16colorspace=256
colorscheme base16-gruvbox-dark-medium
EOF

# 2. Ensure colors directory exists
mkdir -p ~/.vim/colors

# 3. Clone base16 themes if not already cloned
if [ ! -d ~/.vim-base16 ]; then
  echo "🎨 Cloning base16-vim color schemes..."
  git clone https://github.com/tinted-theming/base16-vim.git ~/.vim-base16
fi

# 4. Link the selected theme file to ~/.vim/colors
ln -sf ~/.vim-base16/colors/base16-gruvbox-dark-medium.vim ~/.vim/colors/base16-gruvbox-dark-medium.vim

# Optional: Download other themes manually here if needed
# Example:
# curl -fsSL <url> -o ~/.vim/colors/<name>.vim

echo "✅ Vim setup complete!"
echo "💡 Launch Vim with: vim"
echo "🎨 Using theme: base16-gruvbox-dark-medium"
