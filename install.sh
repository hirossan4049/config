cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf

if [`uname` = "Darwin"]; then
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    brew bundle


elif [ `uname` = "Linux" ]; then
    sudo apt install vim tmux git zsh
fi

mkdir -p ~/fun


echo install onedark
sh onedark_install.sh

echo install oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

echo

echo ===== Install successfully =====

echo
