@ECHO OFF&PUSHD %~DP0 &TITLE 创建快捷方式BY 52PJ.COM Found.Inheritor
mode con cols=120 lines=50
color C
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行！&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion
:Menu
Cls
@ echo.
@ echo.　　　　　 菜 单 (Made by Found.Inheritor)
@ echo.
@ echo.     创建桌面图标 → 请输入1
@ echo.
@ echo.     您下载的文件来源于吾爱破解论坛up主：Found.Inheritor。激活方式均为正规激活方式
@ echo.     计算机软件条例，作为学习使用不触犯法律，
@ echo.     但严肃申明，此软件仅供学习交流，请支持正版，购买正版使用
@ echo.     并于24小时之内删除。
@ echo.     请勿用于商业用途，否则版权方可以依法追究商业用途者的责任。
set /p xj=     输入数字按回车：
if /i "%xj%"=="1" Goto Establish
@ echo.
echo      选择无效，请重新输入
ping -n 2 127.1>nul 
goto menu
:Establish
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\未来教育考试系统.lnk""):b.TargetPath=""%~dp0System3.0.exe"":b.WorkingDirectory=""%~dp0"":b.Save:close")
goto fanhui
@ ECHO.
ECHO 　　　设置完成..(MADE BY Found.Inheritor)
ping -n 2 127.8>nul
goto menu

