<#	
	.NOTES
	===========================================================================

	 Created on:   	19/09/2016 11:41
	 Created by:   	khanm1
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>
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