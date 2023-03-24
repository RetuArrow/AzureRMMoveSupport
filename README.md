# AzureMoveSupport
Check if your Azure resources support move operation to another subscription
Move operation support for resources:<br>
https://docs.microsoft.com/fi-fi/azure/azure-resource-manager/management/move-support-resources<br>
Move operation support for resources CSV (downloaded by the script):<br>
https://raw.githubusercontent.com/tfitzmac/resource-capabilities/master/move-support-resources.csv<br>

1. Download AzureMoveCheck.ps1
3. Go to Azure portal and click all resources
4. Click Manage View -> Edit Columns -> Choose **Name** and **Resource Type**
5. Click **Export to CSV**
6. Copy downloaded CSV-file (Azureresources.csv) to the same folder as the script
7. Edit Azureresources.csv and remove the first line "SEP=," and save
8. Run the AzureMoveCheck.ps1
9. Check the results file **results.csv**
10. 0 = does not support move operation
11. 1 = supports move operation

# AzureRMMoveSupport
Check if your Azure resources support move operation to another subscription
Move operation support for resources:<br>
https://docs.microsoft.com/fi-fi/azure/azure-resource-manager/management/move-support-resources<br>
Move operation support for resources CSV (downloaded by the script):<br>
https://raw.githubusercontent.com/tfitzmac/resource-capabilities/master/move-support-resources.csv<br>

1. Download AzureRMMoveCheck.ps1
2. Go to Azure portal and open cloud shell (PowerShell)
3. Log in (Login-AzureRmAccount or Connect-AzAccount -UseDeviceAuthentication)
4. Run the AzureMoveCheck.ps1
5. Check the results file **results.csv** (Subscription ID, resource name, resource type and if movable)
6. 0 = does not support move operation
7. 1 = supports move operation
