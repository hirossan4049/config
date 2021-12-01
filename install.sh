cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf

if [`uname` = "Darwin"]; then
    echo set defaults
    defaults write com.apple.dock autohide-time-modifier -float 0.2;killall Dock
    defaults write com.apple.iphonesimulator ShowSingleTouches 1
    defaults write com.apple.dt.Xcode ShowBuildOperationDuration YES
    defaults write com.apple.dock "show-recents" -bool "false" && killall Dock
    echo install homebrew
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    echo installed homebrew
    brew bundle
    echo done brew bundle


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
