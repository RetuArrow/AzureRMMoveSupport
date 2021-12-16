# AzureMoveSupport
Check if your Azure resources support move operation to another subscription

1. Dowload AzureMoveCheck.ps1
3. Go to Azure portal and click all resources ![image](https://user-images.githubusercontent.com/69797126/146371150-eb8e024b-fa57-4be4-9ae0-492c05e16336.png)
4. Click Manage View -> Edit Columns -> Choose **Name** and **Resource Type**
5. Click **Export to CSV**
6. Copy donloaded CSV-file (Azureresources.csv) to the same folder as the script
7. Edit Azureresources.csv and remove the first line "SEP=," and save
8. Run the AzureMoveCheck.ps1
9. Check the results file **results.csv**
10. 0 = does not support move operation
11. 1 = supports move operation
