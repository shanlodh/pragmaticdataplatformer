@echo off
REM Get the current date and time in YYYYMMDD:HHMM format
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set datetime=%%I
set year=%datetime:~0,4%
set month=%datetime:~4,2%
set day=%datetime:~6,2%
set hour=%datetime:~8,2%
set minute=%datetime:~10,2%
set timestamp=%year%%month%%day%:%hour%%minute%

REM Add all changes to git
git add .

REM Commit with the generated timestamp
git commit -m "%timestamp%"

REM Push to the main branch
git push -u origin main