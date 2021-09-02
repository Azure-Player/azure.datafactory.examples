BeforeDiscovery {
    Import-Module -Name 'azure.datafactory.tools' -Force -Verbose:$false
}

InModuleScope azure.datafactory.tools {

    # Variables for use in tests
    $script:RootFolder = $PSScriptRoot

    #Invoke-Expression "explorer.exe '$TmpFolder'"


    Describe 'Update-PropertiesFromFile2' -Tag 'Unit','private' {

        Context 'When called with stage as short code but file does not exist' {
            $script:adf = Import-AdfFromFolder -FactoryName "xyz" -RootFolder "$RootFolder"
            $script:option = New-AdfPublishOption
            $script:adf.PublishOptions = $option
            Update-PropertiesFromFile -adf $script:adf -stage "c006"
        }


    }


}
