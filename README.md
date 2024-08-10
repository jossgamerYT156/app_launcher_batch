# app_launcher_batch
A Simple .bat to launch Lilly's .exe apps and simple things with CMD-Only mode.
Please check [Before We Begin](#Before_We_Begin!) before downloading and editing this batch launcher!

# Before_We_Begin!
- What this launcher does?
  > Simply launches .exe apps with a CLI input interface, it is made to be a simple launcher without much to add.
  > take it as a MS-DOS-Like way to launch Windows apps.
  > This launcher does NOT handle UWP apps.
  > This simple launcher is made for Low-End PC's who can't run Windows' Default UI without being pinned at 100% usage.

- Why?
  > i was bored, and my PC struggled with Windows' Default UI. so i wrote this to run n CMD-Only Mode.


# How to Edit It?

- Open the file in Notepad(this is also recommended to do if you don't trust these .bat files.)
- Go to the `if` parts and add your apps prefixes(these doesn't need to be `/SOMETHING`)
- Search for the paths to your .exe files and add them to the `:APP` function, this is some basic .bat scripting.

To add your apps you can add code snippets like:
```
if "%command%" == "/someapp" goto someapp

:: rest of the IF statements here.
:: or other functions.

:someapp
echo "We are starting some app."
start "" "C:\Path\To\Some\App.exe"
goto input
```

explanation:

- `if` statement: this is only to detect if you write a prefix or not, if it doesn't find a prefix, it will fail to find the prefix or function, returning a error(you might could customize this or leave it as the default.)
- `:someapp` function: this is a function of sorts, you add this so you can call it from the `if` methods, this way you can call them with your `/prefixes`
- `echo` statement: we add this to add a bit of interactivity, this way we can know if the script is executing properly, though if it fails, you will know.
- `start` function: this is a simple Windows' call to start a app, see the [Information About "start"](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwj86LO67-mHAxUGMdAFHXbtFZIQFnoECB8QAQ&url=https%3A%2F%2Flearn.microsoft.com%2Fen-us%2Fwindows-server%2Fadministration%2Fwindows-commands%2Fstart&usg=AOvVaw2747C8metSawikjg5NS4GZ&opi=89978449) to know what `start` does.
- `goto` statement: we use this to call the `input` function again so the terminal can still work as a launcher, you can write `/q` to quit the launcher and get your CMD prompt back or you could start another one with `/cmd` prefix.


This is all the script does, this might not be completely needed since anyone could write this for themselves, but i hope that this small prefix helps you save some time.

## Remember that without EXPLORER.EXE you can't run UWP apps, the limitations of running without EXPLORER.EXE are as many as for you to not be able to run mostly nothing if it is not a .exe file, though your installed apps and system .exe from System32 should be available and shouldn't need any special arguments.
