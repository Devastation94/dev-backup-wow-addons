$date = (Get-Date).ToString("yyyyMMdd");
# Change this line to how many days of backups you want
$maxBackup = 30;
$oldDate = (Get-Date).AddDays(-$maxBackup).ToString("yyyyMMdd");
# Change this to the path for your main WoW folder
$wowpath = "D:\Games\World Of Warcraft";
# Change this to where you want to backup to
$remotePath = "D:\My Backups";
# Change this to the number of versions of WoW you want to backup. Muat match folder name in WoW folder
$gameVersions = ("_retail_", "_classic_");

foreach ($gameVersion in $gameVersions) {
    # Backing up WTF
    Copy-Item -Path "$wowpath\$gameVersion\WTF" -Destination "$remotePath\$date\$gameVersion" -Recurse -Force;
    Write-Host "Copying $wowpath\$gameVersion\WTF to $remotePath\$date\$gameVersion";
}

# Deleting old backups
if (Test-Path "$remotePath\$oldDate") {
    Remove-Item -Path "$remotePath\$oldDate" -Recurse;
    Write-Host "Deleted $remotePath\$oldDate";
}