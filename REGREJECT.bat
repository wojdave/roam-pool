del RegReject.tmp && del RejectedDevices.txt 

:: pipe nc_mesh.log into for loop to identify Registration Rejected 
type nc_mesh.log | (for /f "tokens=8" %%a in ('find "REG REJECT"') do (echo %%a >> RegReject.tmp)) 

:: sort and remove duplicates
setlocal disabledelayedexpansion 
set "prev=" 
for /f "delims=" %%F in ('sort RegReject.tmp') do ( 
  set "curr=%%F" 
  setlocal enabledelayedexpansion
  if "!prev!" neq "!curr!" echo !curr! >> RejectedDevices.txt
  endlocal
  set "prev=%%F"
)

:: clean up temporary files
del RegReject.tmp

:: display unregistered devices into command line 
type RejectedDevices.txt
pause
