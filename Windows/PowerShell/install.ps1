# Node.jsのバージョン確認
if (-not (Get-Command node -ErrorAction SilentlyContinue)) {
    Write-Output "Node.js is not installed. Installing Node.js..."
    winget install OpenJS.NodeJS
} else {
    Write-Output "Node.js is already installed. Version: $(node -v)"
}

# Yarnのバージョン確認
if (-not (Get-Command yarn -ErrorAction SilentlyContinue)) {
    Write-Output "Yarn is not installed. Installing Yarn..."
    npm install -g yarn
} else {
    Write-Output "Yarn is already installed. Version: $(yarn -v)"
}

# Slidevのバージョン確認
if (-not (Get-Command slidev -ErrorAction SilentlyContinue)) {
    Write-Output "Slidev is not installed. Installing Slidev..."
    yarn global add @slidev/cli
} else {
    Write-Output "Slidev is already installed. Version: $(slidev --version)"
}

# インストールが完了したことを確認
Write-Output "install complete"