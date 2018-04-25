REM This script will re-register the WCF and ASP.net versions needed for the ROAMview Portal


:: ServiceModelReg 

:: -r Reinstall this version of Windows Communication Foundation and update scriptmaps at the IIS metabase root and for all scriptmaps below the root. Existing scriptmaps are upgraded to this version regardless of the original versions.

:: -y Do not ask for confirmation before uninstalling or reinstalling components.

cd c:\windows\microsoft.net\framework64\v3.0\windows communication foundation
ServiceModelReg -r -y


:: aspnet_regiis

:: -iru  Install this version of ASP.NET. If there are any existing applications that uses ASP.NET, it will not change IIS configuration to use this version.

cd c:\windows\microsoft.net\framework64\v4*
aspnet_regiis -iru

iisreset
