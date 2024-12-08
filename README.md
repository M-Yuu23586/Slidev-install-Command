# Slidev-install-Command
このプロジェクトは、Slidevのインストールプロセスを効率化するために作られたコマンドラインツールです。Slidevは、プレゼンテーションを作成するための強力なツールですが、そのインストール手順が複雑であることがあります。このコマンドを使用することで、簡単かつ迅速にSlidevをインストールすることができます。

## 目次
- [Slidev-install-Command](#slidev-install-command)
  - [目次](#目次)
  - [インストール](#インストール)
    - [開発者の場合](#開発者の場合)
    - [非開発者の場合](#非開発者の場合)
    - [必要条件](#必要条件)
    - [手順](#手順)
    - [開発者の場合](#開発者の場合-1)
    - [非開発者の場合](#非開発者の場合-1)
  - [使い方](#使い方)
    - [Windows](#windows)
    - [Mac](#mac)
    - [Linux](#linux)
  - [オプション](#オプション)
  - [ライセンス](#ライセンス)

## インストール
インストール手順は以下のとおりです。

### 開発者の場合
リポジトリをクローンします。
```sh
    git clone https://github.com/yourusername/Slidev-install-Command.git
    cd Slidev-install-Command
```

### 非開発者の場合
リリースページから最新のバージョンをダウンロードします。
1. [リリースページ](https://github.com/yourusername/Slidev-install-Command/releases)にアクセスします。
2. 最新のリリースを見つけて、アセットから適切なファイルをダウンロードします。
3. ダウンロードしたファイルを解凍し、任意のディレクトリに配置します。

### 必要条件
- Node.js (バージョン14以上)
- npm または yarn

### 手順
クローン手順は開発者、非開発者によって異なります。
### 開発者の場合
リポジトリをクローンします。
```sh
git clone https://github.com/yourusername/Slidev-install-Command.git
cd Slidev-install-Command
```

### 非開発者の場合
リリースページから最新のバージョンをダウンロードします。
1. [リリースページ](https://github.com/yourusername/Slidev-install-Command/releases)にアクセスします。
2. 最新のリリースを見つけて、アセットから適切なファイルをダウンロードします。
3. ダウンロードしたファイルを解凍し、任意のディレクトリに配置します。


## 使い方
使い方の説明は以下のとおりです。

### Windows
1. PowerShellを開きます。
2. プロジェクトのディレクトリに移動します。
3. 以下のコマンドを実行します。
  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser && ./install.ps1
  ```

### Mac
1. ターミナルを開きます。
2. プロジェクトのディレクトリに移動します。
3. 以下のコマンドを実行します。
  ```sh
  chmod +x install.bash
  ./install.bash
  ```

### Linux
1. ターミナルを開きます。
2. プロジェクトのディレクトリに移動します。
3. 以下のコマンドを実行します。
  ```sh
  chmod +x install.bash && ./install.bash
  ```
## オプション
利用可能なオプションは以下のとおりです。

- `--help`: ヘルプ情報を表示します。
- `--version`: バージョン情報を表示します。
- `--install-dir <path>`: インストール先のディレクトリを指定します。
- `--force`: 既存のインストールを強制的に上書きします。

## ライセンス
このプロジェクトのライセンスはMITライセンスです。詳細については、[LICENSE](./LICENSE)ファイルを参照してください。