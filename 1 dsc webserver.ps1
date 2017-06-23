Configuration WebSiteConfig
{

Import-DscResource -ModuleName  xWebAdministration -ModuleVersion 1.14.0.0 

param ( 
[Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [String[]]$NodeName,

   [Parameter(Mandatory=$false)]
        [PSCredential]$Credential
        )


Node $NodeName
{

 WindowsFeature installdotNet35 
    {             
        Ensure = "Present"
        Name = "Net-Framework-Core"
        Source = "\\pfgdfs01\packages\"
    } 


WindowsFeature IIS
    {
        Ensure = "Present"
        Name = "Web-Server"
    }


WindowsFeature ASP
    {
        Ensure = "Present"
        Name = "Web-Asp-Net45"
    }


xWebsite  MyWebSite
    {
        Ensure = "Present"
        Name = "MyWebSite"
        PhysicalPath = "C:\Inetpub\MyWebSite"
        State = "Started"
        
        BindingInfo = @("*:80:")
    }


File releasefiles
{
                SourcePath = "\\path\" 
                DestinationPath = "\\path" 
                Ensure = "Present" 
                MatchSource = $true 
                Recurse= $true
                Type = "Directory" 


}
}
}

WebSiteConfig 
