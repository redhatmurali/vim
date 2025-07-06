#!/bin/bash

echo "🔧 Setting up your Vim configuration..."

# Create ~/.vimrc with a modern config
cat > ~/.vimrc << 'EOF'
" --- General settings ---
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

" --- Visual tweaks ---
set nowrap
set scrolloff=5
set wildmenu
set lazyredraw
set incsearch
set hlsearch

" --- Color scheme ---
" Uncomment any one of the following to try a theme:
"colorscheme gruvbox
"colorscheme nord
"colorscheme gruvbox-material
"colorscheme tokyonight
"colorscheme onedark
"colorscheme monokai
"colorscheme kanagawa
"colorscheme everforest
"colorscheme PaperColor
"colorscheme nightfox
"colorscheme catppuccin_mocha  " good light blue
"colorscheme rose-pine
colorscheme base16-gruvbox-dark-medium

EOF

# Create colors directory
mkdir -p ~/.vim/colors

echo "🎨 Downloading selected color schemes..."

# Only downloading gruvbox and catppuccin as examples
curl -fsSL https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim -o ~/.vim/colors/gruvbox.vim
curl -fsSL https://raw.githubusercontent.com/catppuccin/vim/main/colors/catppuccin_mocha.vim -o ~/.vim/colors/catppuccin_mocha.vim
git clone https://github.com/tinted-theming/base16-vim.git ~/.vim/pack/themes/start/base16


# You can uncomment more curl lines below to download additional themes:
# curl -fsSL https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/colors/nord.vim -o ~/.vim/colors/nord.vim
# curl -fsSL https://raw.githubusercontent.com/sainnhe/everforest/master/colors/everforest.vim -o ~/.vim/colors/everforest.vim
# curl -fsSL https://raw.githubusercontent.com/joshdick/onedark.vim/master/colors/onedark.vim -o ~/.vim/colors/onedark.vim
# curl -fsSL https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim -o ~/.vim/colors/monokai.vim
# curl -fsSL https://raw.githubusercontent.com/ghifarit53/tokyonight-vim/master/colors/tokyonight.vim -o ~/.vim/colors/tokyonight.vim
# curl -fsSL https://raw.githubusercontent.com/NLKNguyen/papercolor-theme/master/colors/PaperColor.vim -o ~/.vim/colors/PaperColor.vim
# curl -fsSL https://raw.githubusercontent.com/edeneast/nightfox.vim/main/colors/nightfox.vim -o ~/.vim/colors/nightfox.vim
# curl -fsSL https://raw.githubusercontent.com/rose-pine/vim/main/colors/rose-pine.vim -o ~/.vim/colors/rose-pine.vim

echo "✅ Vim setup complete! Open Vim and enjoy your new theme."
