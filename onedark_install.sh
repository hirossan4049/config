echo Install Onedark theme Start!
git clone https://github.com/joshdick/onedark.vim

mkdir -p .vim/colors
mv onedark.vim/colors/* ~/.vim/colors/
mkdir -p ~/.vim/autoload
mv onedark.vim/autoload/onedark.vim ~/.vim/autoload

echo Done!

rm -rf onedark.vim

echo Successfully installed OneDark theme!
