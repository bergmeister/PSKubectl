param(
    [ValidateSet('Debug', 'Release')]
    [string] $Configuration = 'Debug',

    [switch] $NoRestore
)

try
{
    Push-Location "$PSScriptRoot/src"
    $options = @()
    if ($NoRestore)
    {
        $options += '--no-restore'
    }
    dotnet publish --configuration $Configuration @options
    $copyItemOptions = @{
        Path = [IO.Path]::Combine($PWD, 'bin', $Configuration, 'netstandard2.0', 'publish')
        Destination = [IO.Path]::Combine($PWD, '..', 'PSKubectl', 'Assemblies')
        Recurse = $true
        Exclude = 'Microsoft.*'
    }
    Copy-Item @copyItemOptions
    if ($LASTEXITCODE -ne 0)
    {
        throw "Build failed"
    }
}
finally
{
    Pop-Location
}
