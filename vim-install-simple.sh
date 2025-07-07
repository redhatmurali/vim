#!/bin/bash

echo "Setting up your Vim configuration..."

# Create ~/.vimrc with a modern config
cat > ~/.vimrc << 'EOF'
" --- General settings ---
syntax on
set number
set relativenumber
set showmatch
set cursorline
set background=dark
set termguicolors
set t_Co=256

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
set background=dark
set termguicolors
#colorscheme gruvbox
#colorscheme nord
#colorscheme gruvbox-material
#colorscheme tokyonight
#colorscheme onedark
#colorscheme monokai
#colorscheme kanagawa
#colorscheme everforest
#colorscheme PaperColor
#colorscheme nightfox
colorscheme catppuccin_mocha #Good light blue
#colorscheme rose-pine 
#colorscheme base16-gruvbox-dark-medium 

EOF

# Create colors directory if it doesn't exist
mkdir -p ~/.vim/colors

# Download Gruvbox color scheme
echo "Downloading Gruvbox theme..."
curl -fsSL https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim -o ~/.vim/colors/gruvbox.vim
#curl -o ~/.vim/colors/nord.vim https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/colors/nord.vim
#curl -o ~/.vim/colors/solarized.vim https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim
#curl -o ~/.vim/colors/onedark.vim https://raw.githubusercontent.com/joshdick/onedark.vim/master/colors/onedark.vim
#curl -o ~/.vim/colors/monokai.vim https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim
#curl -o ~/.vim/colors/tokyonight.vim https://raw.githubusercontent.com/ghifarit53/tokyonight-vim/master/colors/tokyonight.vim
#curl -o ~/.vim/colors/gruvbox-material.vim https://raw.githubusercontent.com/sainnhe/gruvbox-material/master/colors/gruvbox-material.vim
#curl -o ~/.vim/colors/kanagawa.vim https://raw.githubusercontent.com/rebelot/kanagawa.nvim/main/colors/kanagawa.vim
#curl -o ~/.vim/colors/kanagawa.vim https://raw.githubusercontent.com/Avimitin/vim-color-collection/main/colors/kanagawa.vim
#curl -o ~/.vim/colors/everforest.vim https://raw.githubusercontent.com/sainnhe/everforest/master/colors/everforest.vim
#curl -o ~/.vim/colors/PaperColor.vim https://raw.githubusercontent.com/NLKNguyen/papercolor-theme/master/colors/PaperColor.vim
#curl -o ~/.vim/colors/nightfox.vim https://raw.githubusercontent.com/edeneast/nightfox.vim/main/colors/nightfox.vim
curl -o ~/.vim/colors/catppuccin_mocha.vim https://raw.githubusercontent.com/catppuccin/vim/main/colors/catppuccin_mocha.vim
#git clone https://github.com/tinted-theming/base16-vim.git ~/.vim/pack/themes/start/base16


#curl -o ~/.vim/colors/rose-pine.vim https://raw.githubusercontent.com/rose-pine/vim/main/colors/rose-pine.vim
#curl -o ~/.vim/colors/rose-pine-moon.vim https://raw.githubusercontent.com/rose-pine/vim/main/colors/rose-pine-moon.vim
#curl -o ~/.vim/colors/rose-pine-dawn.vim https://raw.githubusercontent.com/rose-pine/vim/main/colors/rose-pine-dawn.vim


echo "✅ Vim setup complete! Open Vim and enjoy the colors."

