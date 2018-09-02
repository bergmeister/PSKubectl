#
# Module manifest for module 'ps-kubectl'
#
# Generated by: felix
#
# Generated on: 23/12/2017
#

@{

    # Script module or binary module file associated with this manifest.
    RootModule       = 'Assemblies/PSKubectl.dll'

    # Version number of this module.
    ModuleVersion    = '0.0.1'

    # Supported PSEditions
    # CompatiblePSEditions = @('Core')

    # ID used to uniquely identify this module
    GUID             = 'e30ad1d5-2463-486f-976e-913f84ad2aca'

    # Author of this module
    Author           = 'Felix Frederick Becker'

    # Company or vendor of this module
    # CompanyName       = 'Unknown'

    # Copyright statement for this module
    Copyright        = '(c) Felix Frederick Becker. All rights reserved.'

    # Description of the functionality provided by this module
    Description      = 'kubectl with the power of the object pipeline'

    # Minimum version of the PowerShell engine required by this module
    # PowerShellVersion = '6.1.0-preview.3'

    # Name of the PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''

    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = ''

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules = @()

    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    ScriptsToProcess = @(
        'Completers/Get-KubeResource.Completer.ps1',
        'Completers/Get-KubePod.Completer.ps1',
        'Completers/Get-KubeDeployment.Completer.ps1'
    )

    # Type files (.ps1xml) to be loaded when importing this module
    TypesToProcess   = @(
        'Types/Config.Types.ps1xml',
        'Types/Context.Types.ps1xml',
        'Types/DeploymentV1Beta1.Types.ps1xml',
        'Types/PodV1.Types.ps1xml'
    )

    # Format files (.ps1xml) to be loaded when importing this module
    FormatsToProcess = @(
        'Formats/Config.Format.ps1xml',
        'Formats/JsonPatch.Operations.Operation.Format.ps1xml',
        'Formats/DeploymentV1Beta1.Format.ps1xml',
        'Formats/PodV1.Format.ps1xml'
    )

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    # NestedModules = @()

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    # FunctionsToExport  = @()

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport  = @(
        'Compare-KubeResource',
        'ConvertFrom-KubeYaml',
        'Get-KubeConfig',
        'Get-KubeDeployment',
        'Get-KubeLog',
        'Get-KubePod',
        'Get-KubeResource',
        'Get-KubeResourceKinds',
        'Set-KubeConfig',
        'Update-KubeResource',
        'Use-KubeContext'
    )

    # Variables to export from this module
    # VariablesToExport = @()

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    # AliasesToExport    = @()

    # DSC resources to export from this module
    # DscResourcesToExport = @()

    # List of all modules packaged with this module
    # ModuleList = @()

    # List of all files packaged with this module
    # FileList = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData      = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags       = @('kubectl', 'kubernetes', 'k8s', 'container', 'orchestration')

            # A URL to the license for this module.
            LicenseUri = 'https://github.com/felixfbecker/PSKubectl/blob/master/LICENSE'

            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/felixfbecker/PSKubectl'

            # A URL to an icon representing this module.
            IconUri    = 'https://github.com/kubernetes/kubernetes/raw/31420467ae9503850515786660fa3e93e9d140b2/logo/logo.png'

            # ReleaseNotes of this module
            # ReleaseNotes = ''

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    # HelpInfoURI = ''

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''

}

