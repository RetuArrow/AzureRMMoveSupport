$uri = "https://raw.githubusercontent.com/tfitzmac/resource-capabilities/master/move-support-resources.csv"
Invoke-WebRequest -Uri $uri -OutFile .\moveSupported.csv

$moveSupported = Import-Csv -Path .\moveSupported.csv
$Azureresources = Import-Csv -Path .\Azureresources.csv
"Resource Name,Resource Type,Move Subscription" |Out-File -FilePath .\results.csv
foreach($resource in $Azureresources){
    foreach($support in $moveSupported){
        $test = $support.Resource.ToLower()
        #$resource."Resource Type" + ":" + $test #| Out-File -FilePath .\results.csv -Append
        if($resource."Resource Type" -like "*"+$test+"*") {
            write-host $resource.name "," $support."Move Subscription"
            $resource.name +","+$resource."Resource Type" +","+ $support."Move Subscription" | Out-File -FilePath .\results.csv -Append
        }

    }
}