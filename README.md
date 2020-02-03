# Flutter
Flutter勉強メモ

# セットアップ
Flutter SDK入手してPATH通す
https://flutter.dev/docs/get-started/install/macos#get-sdk

```bash
$ flutter doctor
```

エラー出たら以下のリンク通り対応していく
https://flutter.dev/docs/get-started/install/macos#run-flutter-doctor

iOS Simulatorを起動させておくと `No devices available` エラーを回避できる
```bash
$  open -a Simulator.app
```



# 新規アプリ作成

```bash
$ flutter create my_app
$ cd my_app
$ flutter run
```

