'Login azure'
#Login-AzureRmAccount

#Do stuff for subscription ID
$subid = Read-Host 'Specify Subscription ID (leave empty for default)'
if($subid)
{
    Set-AzureRmContext -SubscriptionId $subid
}

#Selection of resource group
Write-host "Would you like to create a new Resource Group? (Default is No)"
    $newRGSwitch = Read-Host " (y/n) " 
    Switch ($newRGSwitch) 
     { 
       Y {Write-host "Yes."; $NewResourceGroup=$true} 
       N {Write-Host "No. "; $NewResourceGroup=$false} 
       Default {Write-Host "Default - no new group"; $NewResourceGroup=$false} 
     } 

$gname = Read-Host 'Specify Resource Group name'

if($NewResourceGroup -eq "Y")
{
    $rgDefaultLocation = "West Europe"
    $rgDefaultPromt = Read-Host "Please provide location for Resourcegroup [$($rgDefaultLocation)]"
    $rgDefaultPromt = ($rgDefaultLocation,$rgDefaultPromt)[[bool]$rgDefaultPromt]
    $resourcegroup = New-AzureRmResourceGroup $gname -Location $rgDefaultPromt
    $resourcegroup = (Get-AzureRmResourceGroup -Name $gname).ResourceGroupName
}
else
{

    $resourcegroup = (Get-AzureRmResourceGroup -Name $gname).ResourceGroupName
}
    

#Deploy stuff
New-AzureRmResourceGroupDeployment -ResourceGroupName $resourcegroup -TemplateParameterFile "azuredeploy.parameters.json" -TemplateFile "azuredeploy.json" -Verbose