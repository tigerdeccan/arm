Configuration FirstWebsite
{
param ($MachineName)
Node $MachineName
{
#Install the IIS Role
WindowsFeature IIS
{
Ensure = “Present”
Name = “Web-Server”
}
#Install ASP.NET 4.5
WindowsFeature ASP
{
Ensure = “Present”
Name = “Web-Asp-Net45”
}
}
}


FirstWebsite –MachineName “HOPOCOCDB1” -OutputPath c:\temp



#$Guid= [guid]::NewGuid()


$source = “c:\temp\HOPOCOCDB1.mof”

$target= “\\HOPOCPSDSC1\c$\program files\windowspowershell\dscservice\configuration\$Guid.mof”

copy $source $target
New-DSCChecksum $target
#$guid 