cd 'adf-simpledeployment'

npm i @microsoft/azure-data-factory-utilities

$LocalPath = Get-Location

# Clear output
Remove-Item -Path "$LocalPath\ArmTemplate" -Recurse -Force
Remove-Item -Path "$LocalPath\downloads" -Recurse -Force
Remove-Item -Path "$LocalPath\node_modules" -Recurse:$true -Force
get-childitem -Path "$LocalPath\node_modules\*.*" -recurse | remove-item -Force
get-childitem -Path "$LocalPath\node_modules" -recurse | remove-item -Force
Remove-Item -Path "$LocalPath\package-lock.json" -Force


$rg = 'rg-blog-dev'
$adf = 'adf-simpledeployment-dev'
$adf = Split-Path -Path $LocalPath -Leaf
$subscriptionId = '0278080f-e1af-4ee8-98b3-881a286350aa'
$adfAzurePath = "/subscriptions/$subscriptionId/resourceGroups/$rg/providers/Microsoft.DataFactory/factories/$adf"
$adfAzurePath

npm run build

# Validate
# run build validate $(Build.Repository.LocalPath) /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/testResourceGroup/providers/Microsoft.DataFactory/factories/yourFactoryName'
cls
npm run build validate $LocalPath $adfAzurePath



# Validate and Generate ARM template
#run build export $(Build.Repository.LocalPath) /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/testResourceGroup/providers/Microsoft.DataFactory/factories/yourFactoryName "ArmTemplate"
cls
npm run build export $LocalPath $adfAzurePath "ArmTemplate"

npm version


# What if I don't have target ADF yet - it's my first build?!



Get-Random -Maximum 1000

Get-Random -Minimum 1000 -Maximum 9999
