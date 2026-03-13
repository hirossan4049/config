# dotfiles

```
$ sh ./install.sh
```

## Mac

| Command | Target Domain | Key | Value | Purpose |
|---|---|---|---|---|
| `defaults write com.apple.dock autohide-time-modifier -float 0.2` | Dock | autohide-time-modifier | 0.2 | Dock自動表示アニメーション速度を高速化 |
| `defaults write com.apple.iphonesimulator ShowSingleTouches 1` | iOS Simulator | ShowSingleTouches | 1 | Simulator上でタッチ位置を可視化 |
| `defaults write com.apple.dt.Xcode ShowBuildOperationDuration YES` | Xcode | ShowBuildOperationDuration | YES | ビルド各工程の実行時間を表示 |
| `defaults write com.apple.dock "show-recents" -bool "false" && killall Dock` | Dock | show-recents | false | Dockの最近使用アプリ表示を無効化 |
| `defaults write -g InitialKeyRepeat -int 12` | Global | InitialKeyRepeat | 12 | キー長押し後のリピート開始時間を短縮 |
| `defaults write -g KeyRepeat -int 1` | Global | KeyRepeat | 1 | キーリピート速度を最大化 |
| `defaults write com.apple.QuickTimePlayerX NSRecentDocumentsLimit 0` | QuickTime Player | NSRecentDocumentsLimit | 0 | 最近開いたファイル履歴を保存しない |
| `defaults delete com.apple.QuickTimePlayerX.LSSharedFileList RecentDocuments` | QuickTime Player | RecentDocuments | delete | 最近開いたファイル履歴リストを削除 |
| `defaults write com.apple.QuickTimePlayerX.LSSharedFileList RecentDocuments -dict-add MaxAmount 0` | QuickTime Player | MaxAmount | 0 | 最近のドキュメント保持数を0に制限 |


## Themes
- zsh
   - daveverwer
