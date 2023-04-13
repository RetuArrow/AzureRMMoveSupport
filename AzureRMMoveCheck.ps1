$uri = "https://raw.githubusercontent.com/tfitzmac/resource-capabilities/master/move-support-resources.csv"
Invoke-WebRequest -Uri $uri -OutFile .\moveSupported.csv

$moveSupported = Import-Csv -Path .\moveSupported.csv
#$Azureresources = Import-Csv -Path .\Azureresources.csv
$Azureresources = Get-AzResource | select ResourceId, Name, ResourceType, @{Label='SKU';Expression={$_.Sku.Name}}
"Subscription,SKU,Resource Name,Resource Type,Move Subscription" |Out-File -FilePath .\results.csv
foreach($resource in $Azureresources){
    foreach($support in $moveSupported){
        $test = $support.Resource.ToLower()
        #$resource."Resource Type" + ":" + $test #| Out-File -FilePath .\results.csv -Append
        if($resource."ResourceType" -like "*"+$test+"*") {
            write-host $resource.resourceid.Split("/")[2] "," $resource.SKU "," $resource.name "," $support."Move Subscription"
            $resource.resourceid.Split("/")[2]+","+$resource.name +","+$resource."ResourceType" +","+ $support."Move Subscription" | Out-File -FilePath .\results.csv -Append
        }

    }
}
