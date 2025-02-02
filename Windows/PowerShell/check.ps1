# check.ps1
# このスクリプトはSlidevとその関連ライブラリがインストールされているかを確認します

# モジュールがインストールされているかを確認する関数
function Check-Module {
    param (
        [string]$moduleName
    )
    $module = Get-Module -ListAvailable -Name $moduleName
    if ($module) {
        Write-Output "$moduleName はインストールされています。"
    } else {
        Write-Output "$moduleName はインストールされていません。"
    }
}

# Node.jsがインストールされているかを確認
$node = Get-Command -Name node
if ($node) {
    Write-Output "Node.js はインストールされています。"
} else {
    Write-Output "Node.js はインストールされていません。"
}

# Chocolateyがインストールされているかを確認
$choco = Get-Command -Name choco

# Slidev関連ライブラリのリスト
$modules = @("slidev", "slidev-theme", "slidev-cli")

# 各モジュールを確認
foreach ($module in $modules) {
    Check-Module -moduleName $module
}

# ログファイルを出力
$modules | ForEach-Object {
    Check-Module -moduleName $_
} | Out-File -FilePath "check.log"