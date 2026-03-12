# 1行でDockerサーバ環境構築

サーバに`root`ログインし１行のコマンドを実行するだけでDocker環境が構築できるスクリプトです。

## 対象OS

- Ubuntu 24

## ライセンス

[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://lbesson.mit-license.org/)

# 内容

Ansibleのローカル実行でDocker環境を構築します。

## インストールモジュール

- geerlingguy.docker (Ansible Galaxy ロール) で Docker をインストール

# 使い方

新規にOSをインストールしたサーバに`root`でログインし、以下の１行のコマンドをそのままコピーして実行します。

## 実行コマンド

```
curl -fsSL https://raw.githubusercontent.com/czbone/oneliner-docker/master/script/start.sh | bash
```

オプション（`bash -s --` 経由で渡す）:
- `-test` … 最新の master ブランチを使用（テスト用）
- `--help` … ヘルプを表示