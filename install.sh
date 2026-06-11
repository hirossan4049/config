cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf

if [`uname` = "Darwin"]; then
    echo set defaults
    defaults write com.apple.dock autohide-time-modifier -float 0.2
    defaults write com.apple.iphonesimulator ShowSingleTouches 1
    defaults write com.apple.dt.Xcode ShowBuildOperationDuration YES
    defaults write com.apple.dock "show-recents" -bool "false" && killall Dock
    defaults write -g InitialKeyRepeat -int 12
    defaults write -g KeyRepeat -int 1
    defaults write com.apple.QuickTimePlayerX NSRecentDocumentsLimit 0
    defaults delete com.apple.QuickTimePlayerX.LSSharedFileList RecentDocuments
    defaults write com.apple.QuickTimePlayerX.LSSharedFileList RecentDocuments -dict-add MaxAmount 0
    defaults write com.apple.loginwindow TALLogoutSavesState -bool false
    defaults write com.apple.loginwindow LoginwindowLaunchesRelaunchApps -bool false
    defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false
    echo install homebrew
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    echo installed homebrew
    brew bundle
    echo done brew bundle

elif [ `uname` = "Linux" ]; then
    sudo apt install vim tmux git zsh
fi

echo Install Onedark theme Start!
git clone --depth 1 https://github.com/joshdick/onedark.vim
mkdir -p ~/.vim/colors
mv onedark.vim/colors/* ~/.vim/colors/
mkdir -p ~/.vim/autoload
mv onedark.vim/autoload/onedark.vim ~/.vim/autoload
rm -rf onedark.vim
echo Successfully installed OneDark theme!


echo install oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

echo

echo ===== Install successfully =====

echo
