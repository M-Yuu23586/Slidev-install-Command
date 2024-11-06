# check.ps1
# This script checks if Slidev and its related libraries are installed

# Function to check if a module is installed
function Check-Module {
    param (
        [string]$moduleName
    )
    $module = Get-Module -ListAvailable -Name $moduleName
    if ($module) {
        Write-Output "$moduleName is installed."
    } else {
        Write-Output "$moduleName is not installed."
    }
}

# List of Slidev related libraries
$modules = @("slidev", "slidev-theme", "slidev-cli")

# Check each module
foreach ($module in $modules) {
    Check-Module -moduleName $module
}