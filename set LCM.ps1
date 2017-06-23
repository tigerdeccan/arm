Configuration SetPullMode
{
param([string]$guid)
Node HOPOCOCDB1
{
LocalConfigurationManager
{
 AllowModuleOverwrite = $True
 RefreshFrequencyMins = 15
 ConfigurationModeFrequencyMins = 30
ConfigurationMode = ‘ApplyAndAutoCorrect’
ConfigurationID = $guid
RefreshMode = 'Pull'
RebootNodeIfNeeded = $true
DownloadManagerName = ‘WebDownloadManager’
DownloadManagerCustomData = @{
ServerUrl = 'http://hopocpsdsc1.ho.pfgroup.provfin.com:8080/PSDSCPullServer.svc';
         AllowUnsecureConnection = ‘True’ }
}
}
}
SetPullMode -guid $Guid
Set-DSCLocalConfigurationManager –Computer HOPOCOCDB1 -Path ./SetPullMode –Verbose