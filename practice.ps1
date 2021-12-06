$SourceFolder = 'C:\Users\benja\Documents\A - 2021 Fall\Source'
$targetFolder = 'C:\Users\benja\Documents\A - 2021 Fall\Destination'
$numFiles = (Get-ChildItem -Path $SourceFolder -Filter *).Count
$i=0

clear-host;
Write-Host 'This script will copy ' $numFiles ' files from ' $SourceFolder ' to ' $targetFolder
Read-host -prompt 'Press enter to start copying the files'

Get-ChildItem -Path $SourceFolder -Filter *.TXT | %{ 
    [System.IO.FileInfo]$destination = (Join-Path -Path $targetFolder -ChildPath $_.Name.replace("_","\"))

   if(!(Test-Path -Path $destination.Directory )){
    New-item -Path $destination.Directory.FullName -ItemType Directory 
    }
    [int]$percent = $i / $numFiles * 100

    copy-item -Path $_.FullName -Destination $Destination.FullName
    Write-Progress -Activity "Copying ... ($percent %)" -status $_  -PercentComplete $percent -verbose
    $i++
}
Write-Host 'Total number of files read from directory '$SourceFolder ' is ' $numFiles
Write-Host 'Total number of files that was copied to '$targetFolder ' is ' $i
Read-host -prompt "Press enter to complete..."
clear-host;