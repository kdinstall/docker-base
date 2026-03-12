# 1行でDockerサーバ環境構築

サーバに`root`ログインし１行のコマンドを実行するだけでDocker環境が構築できるスクリプトです。

## 対象OS

- Ubuntu 24

## ライセンス

[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://lbesson.mit-license.org/)

# 内容

Ansibleのローカル実行でDocker環境を構築します。

## インストールモジュール

- `geerlingguy.docker` 8.0.0 (Ansible Galaxy ロール) で Docker をインストール
- `zip`, `unzip` をインストール

# 使い方

新規にOSをインストールしたサーバに`root`でログインし、以下の１行のコマンドをそのままコピーして実行します。

## 実行コマンド

`REPO_USER` と `REPO_NAME` を環境変数で指定して実行します。

```bash
curl -fsSL https://raw.githubusercontent.com/REPO_USER/REPO_NAME/master/script/start.sh | REPO_USER=youruser REPO_NAME=yourrepo bash
```

例:

```bash
curl -fsSL https://raw.githubusercontent.com/kdinstall/docker-base/master/script/start.sh | REPO_USER=kdinstall REPO_NAME=docker-base bash
```

オプション（`bash -s --` 経由で渡す）:

| オプション | 説明 |
|---|---------|
| `--help` | ヘルプを表示 |

## テスト実行

最新の master ブランチを使用してテスト実行する場合は、テスト用スクリプトを使用します。

```bash
curl -fsSL https://raw.githubusercontent.com/kdinstall/docker-base/master/test/start.sh | REPO_USER=kdinstall REPO_NAME=docker-base bash
```

> **注意:** `REPO_USER` と `REPO_NAME` の両方が必須です。未設定の場合はエラーで終了します。