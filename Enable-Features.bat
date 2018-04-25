REM Enable-Features required for ROAMview Startup

Dism /online /Enable-Feature /FeatureName:IIS-WebServerRole
Dism /online /Enable-Feature /FeatureName:IIS-WebServerManagementTools
Dism /online /Enable-Feature /FeatureName:IIS-ManagementConsole
Dism /online /Enable-Feature /FeatureName:IIS-ManagementScriptingTools
Dism /online /Enable-Feature /FeatureName:IIS-ManagementService

Dism /online /Enable-Feature /FeatureName:IIS-WebServer
Dism /online /Enable-Feature /FeatureName:IIS-ApplicationDevelopment
Dism /online /Enable-Feature /FeatureName:IIS-NetFxExtensibility
Dism /online /Enable-Feature /FeatureName:IIS-ASP
Dism /online /Enable-Feature /FeatureName:IIS-ASPNET
Dism /online /Enable-Feature /FeatureName:IIS-CGI
Dism /online /Enable-Feature /FeatureName:IIS-ISAPIExtensions
Dism /online /Enable-Feature /FeatureName:IIS-ISAPIFilter
Dism /online /Enable-Feature /FeatureName:IIS-ServerSideIncludes

Dism /online /Enable-Feature /FeatureName:IIS-CommonHttpFeatures
Dism /online /Enable-Feature /FeatureName:IIS-DefaultDocument
Dism /online /Enable-Feature /FeatureName:IIS-DirectoryBrowsing
Dism /online /Enable-Feature /FeatureName:IIS-HttpErrors
Dism /online /Enable-Feature /FeatureName:IIS-HttpRedirect
Dism /online /Enable-Feature /FeatureName:IIS-StaticContent

Dism /online /Enable-Feature /FeatureName:IIS-HealthAndDiagnostics
Dism /online /Enable-Feature /FeatureName:IIS-HttpLogging 
Dism /online /Enable-Feature /FeatureName:IIS-RequestMonitor 

Dism /online /Enable-Feature /FeatureName:IIS-Performance
Dism /online /Enable-Feature /FeatureName:IIS-HttpCompressionDynamic
Dism /online /Enable-Feature /FeatureName:IIS-HttpCompressionStatic

Dism /online /Enable-Feature /FeatureName:IIS-Security
Dism /online /Enable-Feature /FeatureName:IIS-RequestFiltering

Dism /online /Enable-Feature /FeatureName:NetFx3
Dism /online /Enable-Feature /FeatureName:WCF-HTTP-Activation
Dism /online /Enable-Feature /FeatureName:WCF-NonHTTP-Activation

Dism /online /Enable-Feature /FeatureName:WindowsMediaPlayer

REM gateway configuration over port 23
Dism /online /Enable-Feature /FeatureName:TelnetClient

