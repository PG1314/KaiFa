@ECHO OFF&PUSHD %~DP0 &TITLE ������ݷ�ʽBY 52PJ.COM Found.Inheritor
mode con cols=120 lines=50
color C
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա������У�&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion
:Menu
Cls
@ echo.
@ echo.���������� �� �� (Made by Found.Inheritor)
@ echo.
@ echo.     ��������ͼ�� �� ������1
@ echo.
@ echo.     �����ص��ļ���Դ���ᰮ�ƽ���̳up����Found.Inheritor�����ʽ��Ϊ���漤�ʽ
@ echo.     ����������������Ϊѧϰʹ�ò��������ɣ�
@ echo.     ���������������������ѧϰ��������֧�����棬��������ʹ��
@ echo.     ����24Сʱ֮��ɾ����
@ echo.     ����������ҵ��;�������Ȩ����������׷����ҵ��;�ߵ����Ρ�
set /p xj=     �������ְ��س���
if /i "%xj%"=="1" Goto Establish
@ echo.
echo      ѡ����Ч������������
ping -n 2 127.1>nul 
goto menu
:Establish
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\δ����������ϵͳ.lnk""):b.TargetPath=""%~dp0System3.0.exe"":b.WorkingDirectory=""%~dp0"":b.Save:close")
goto fanhui
@ ECHO.
ECHO �������������..(MADE BY Found.Inheritor)
ping -n 2 127.8>nul
goto menu

