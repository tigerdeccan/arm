<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2016 v5.2.128
	 Created on:   	19/09/2016 11:35
	 Created by:   	khanm1
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>

@{
	AllNodes = @(
		@{
			NodeName = "ServerA"
			Source = 'C:\Temp\Development-Scripts.zip'
			Destination = 'C:\Deployment\Scripts'
			Force = 'False'
		}
		@{
			NodeName = "ServerB"
			Source = 'C:\Temp\Production-Scripts.zip'
			Destination = 'C:\Deployment\Scripts'
			Force = 'True'
		}
		@{
			NodeName = "ServerC"
			Source = 'C:\Temp\Development-Scripts.zip'
			Destination = 'C:\Deployment\Scripts'
			Force = 'False'
		}
	)
}

		