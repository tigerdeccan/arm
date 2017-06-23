<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2016 v5.2.128
	 Created on:   	19/09/2016 11:25
	 Created by:   	khanm1
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>
$ConfigData = @{
	
	AllNodes = @(
		@{
			NodeName = "Server A "
			Source = 'C:\Temp\Development-Scripts.zip'
			Destination = 'C:\Deployment\Scripts'
			Force = 'False'
		}
		
		
		
		@{
			NodeName = "Server-B"
			Source = 'C:\Temp\Production-Scripts.zip'
			Destination = 'C:\Deployment\Scripts'
			Force = 'True'
		}
		
		
		@{
			NodeName = "Server-C"
			Source = 'C:\Temp\Development-Scripts.zip'
			Destination = 'C:\Deployment\Scripts'
			Force = 'False'
		}
	)
}

Configuration ArchiveDemo
{
	Node $AllNodes.NodeName
	{
		Archive ArchiveDemo
		{
			Path = $Node.Source
			Destination = $Node.Destination
			Force = $Node.Force
		}
	}
}
