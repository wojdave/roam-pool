del RegisterRequest.tmp && del UnregisteredDevices.txt 

:: pipe nc_mesh.log into for loop to identify RegisterRequest 
type nc_mesh.log | (for /f "tokens=4" %%a in ('find "RegisterRequest"') do (echo %%a >> RegisterRequest.tmp)) 
 
:: strip DeviceId= prefix from RegisterRequest.tmp file
setlocal enabledelayedexpansion
for /f %%g in ('type RegisterRequest.tmp') do (
	set x=%%g 
	echo !x:~6! >> DeviceId
)
type DeviceId > RegisterRequest.tmp
del DeviceId

:: sort and remove duplicates
setlocal disabledelayedexpansion 
set "prev=" 
for /f "delims=" %%F in ('sort RegisterRequest.tmp') do ( 
  set "curr=%%F" 
  setlocal enabledelayedexpansion
  if "!prev!" neq "!curr!" echo !curr! >> UnregisteredDevices.txt
  endlocal
  set "prev=%%F"
)

:: clean up temporary files
del RegisterRequest.tmp

:: display unregistered devices into command line 
type UnregisteredDevices.txt
pause
