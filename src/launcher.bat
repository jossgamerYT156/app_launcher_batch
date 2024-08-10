@echo off
echo "Personal App_Launcher"
echo "add your own prefixes by editing this batch file, use: /explorer, /cmd to run specific apps or /exit to exit."
:: here, you can add your IF statements, though first you need to have the path of your applications.
:: things like Discord are on the %APPDATA%\Local directory.
:: Some are easy to find, others are a bit harder, i would recommend you to double-check where you installed your programs, since you will need that path.

:input
set /p command="Enter command: "
:: put your IF statements in this format, this can be just copy-pasted and modified to fit your preferences.
if /i "%command%" == "/explorer" goto explorer
if /i "%command%" == "/cmd"goto cmd
:: you might need these prefixes too so you can remember what you added, it is recommended to add more items to APPLIST everytime you add more apps to this batch-file.
if /i "%command%" == "/help" goto help
if /i "%command%" == "/APPLIST" goto APPLIST

:: we quit with this if statement.
if /i "%command%" == "/q" goto exit
:: this is just a error message.
echo "Unknown command. Please try again with a valid '/' prefix or '/q' to quit."
goto input

:: now, the functions!
:: We use these functions to start certain apps from a CLI way.
:: Have fun editing this as you prefer!
:: add as many apps as you prefer, though you might wanna keep track of what you add.

:explorer
echo "Time To Check Files!"
start "" "explorer.exe"
goto input
::or the CMD Prompt, because i don't trust Poweshell a lot.
:cmd
echo "Command Prompt Started"
start "" "cmd.exe"
goto input

:taskmgr
echo "Launching Task Manager"
start "" "taskmgr.exe"
goto input

:: this is just a simple help message... not very helpful, but you can edit this as you prefer.
:help
echo "Commands start with '/' write '/q' to exit and write the name of a command followed like '/APPNAME', for getting the list of apps, write /APPLIST"
goto input

:APPLIST
echo "/explorer"
echo "/cmd"
echo "That's all apps for now, to add more apps edit the LAUNCHER.BAT file from NOTEPAD.EXE and add the needed IF statements and the :APPNAME's as well as their / prefix."
goto input
:: and we exit with this function, so you can use the starting CMD for... something.
:exit
echo "Exiting Personal App_Launcher."
exit


:: that's all... you can edit this, add, delete or move things around, but be aware that i know this is the most simple way you can run apps, this does NOT run UWP apps, since you can't run them without EXPLORER.EXE.
:: Know the LIMITATIONS that comes with running windows in CMD-Only mode.
:: we have a lot of limitations here, though, this is for Limited Hardware Anyways so... yeah, have fun!
