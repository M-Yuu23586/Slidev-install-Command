# Chocolateyのインストールコマンド
# このスクリプトは、WindowsのPowerShellでChocolateyを使ってNode.js, npm, yarn, Slidevをインストールします
#
# インストールされるパッケージ
# - Node.js
# - npm
# - yarn
# - Slidev
# - Chocolatey

# Chocolateyのインストール
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

if ($?) {
    Write-Host "Chocolateyのインストールが完了しました" -ForegroundColor Green
} else {
    Write-Host "Chocolateyのインストールに失敗しました" -ForegroundColor Red
    exit 1
}

# Node.jsのグローバルインストール
choco install -y nodejs

if ($?) {
    Write-Host "Node.jsのインストールが完了しました" -ForegroundColor Green
} else {
    Write-Host "Node.jsのインストールに失敗しました" -ForegroundColor Red
    exit 1
}

# npmのアップデート
npm install -g npm

if ($?) {
    Write-Host "npmのアップデートが完了しました" -ForegroundColor Green
} else {
    Write-Host "npmのアップデートに失敗しました" -ForegroundColor Red
    exit 1
}

# yarnのグローバルインストール
npm install -g yarn

if ($?) {
    Write-Host "yarnのインストールが完了しました" -ForegroundColor Green
} else {
    Write-Host "yarnのインストールに失敗しました" -ForegroundColor Red
    exit 1
}

# Slidevのグローバルインストール
npm install -g @slidev/cli

if ($?) {
    Write-Host "Slidevのインストールが完了しました" -ForegroundColor Green
} else {
    Write-Host "Slidevのインストールに失敗しました" -ForegroundColor Red
    exit 1
}

# インストールしたパッケージのバージョンを確認
node -v
npm -v
yarn -v
slidev -v
choco -v

# ログファイルを出力
node -v | Out-File -FilePath "install.log"
npm -v | Out-File -FilePath "install.log"
yarn -v | Out-File -FilePath "install.log"
slidev -v | Out-File -FilePath "install.log"
choco -v | Out-File -FilePath "install.log"