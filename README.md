# Instructions

1. 
    * Download `Backup addon settings.xml` and `CopyAddonsDaily.ps1`
    * Create a folder to store backups
2. 
    * Open `Backup addon settings.xml` in a text editor
    * Update line 47 `<Arguments>-ExecutionPolicy Bypass D:\CopyAddonsDaily.ps1 -RunType $true</Arguments>` and change `D:\CopyAddonsDaily.ps1` to the new folder you created. 
    * Save the file and close it
3. 
    * Look down at your keyboard
    * Press the Start Key
    * Type in Task Scheduler
    * Click on Task Scheduler
    * Click Import Task
    * Select `Backup addon settings.xml` from your download folder
    * Close Task Scheduler
4. 
    * Open `CopyAddonsDaily.ps1` in a text editor
    * Update line 3 if you want to change max backups from 30
    * Change the path line 6 to your local MAIN world of warcraft folder
    * Change line 10 if you do not want to backup retail and classic
    * Save `CopyAddonsDaily.ps1`
    * Close `CopyAddonsDaily.ps1`
    * Copy `CopyAddonsDaily.ps1` from your downloads folder to the new backup folder you created 

You can test the backup manually by following the steps below

1. Look down at your keyboard
2. Press the Start Key
3. Type in Task Scheduler
4. Click on Task Scheduler
5. Click Task Scheduler Library
6. Click on backup_addon_settings
7. Click Run