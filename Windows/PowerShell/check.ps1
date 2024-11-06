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

# Slidev関連ライブラリのリスト
$modules = @("slidev", "slidev-theme", "slidev-cli")

# 各モジュールを確認
foreach ($module in $modules) {
    Check-Module -moduleName $module
}