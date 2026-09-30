@echo off
rem Opens organizer.html (must be in the same folder) as a compact app window
set "F=%~dp0organizer.html"
set "U=file:///%F:\=/%"
where msedge >nul 2>nul && (start "" msedge --app="%U%" --window-size=440,820 & exit /b)
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" --app="%U%" --window-size=440,820 & exit /b)
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --app="%U%" --window-size=440,820 & exit /b)
start "" "%F%"
