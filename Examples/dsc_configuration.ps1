configuration default
{
    param
    (
        # Target nodes to apply the configuration
        [string[]]$NodeName = 'localhost'
    )

    Import-Module FutureDecoded
    Import-DSCResource -ModuleName FutureDecoded

    Node $NodeName
    {

        $moduleRoot = [io.path]::GetDirectoryName((Get-Module FutureDecoded).Path)
        $examples = "$moduleRoot\Examples"

        # Install the IIS role
        WindowsFeature IIS
        {
            Ensure          = "Present"
            Name            = "Web-Server"
        }

    }
}

