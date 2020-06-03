echo Install Onedark theme Start!
git clone https://github.com/joshdick/onedark.vim

mv onedark.vim/colors ~/.vim/
mkdir ~/.vim/autoload
mv onedark.vim/autoload/onedark.vim ~/.vim/autoload

echo Done!

rm -rf onedark.vim

echo Successfully installed OneDark theme!
