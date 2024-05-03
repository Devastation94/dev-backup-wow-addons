# Instructions

1. 
    * Download `Backup addon settings.xml` and `CopyAddonsDaily.ps1`
    * Create a folder to store backups
2. 
    * Open `Backup addon settings.xml` in a text editor
    * Update line 47 `<Arguments>-ExecutionPolicy Bypass D:\CopyAddonsDaily.ps1 -RunType $true</Arguments>` and change `D:\CopyAddonsDaily.ps1` to the new folder you created. 
    * Save the file and close it
3. 
    * Open Task Scheduler
    * Click Import Task
    * Select `Backup addon settings.xml` from your download folder
    * Close Task Scheduler
4. 
    * Open `CopyAddonsDaily.ps1` in a text editor
    * Update line 3 if you want to change max backups from 30
    * Change the path line 6 to your local MAIN world of warcraft folder
    * Change the path in line 8 to the new backup folder you created
    * Change line 10 if you do not want to backup retail and classic
    * Save `CopyAddonsDaily.ps1`
    * Close `CopyAddonsDaily.ps1`
    * Copy `CopyAddonsDaily.ps1` from your downloads folder to the new backup folder you created 