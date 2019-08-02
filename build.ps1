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
    Copy-Item -Path ([IO.Path]::Combine($PWD, 'bin', 'netstandard2.0', 'publish'))`
        -Destination ([IO.Path]::Combine($PWD, '..', 'PSKubectl', 'Assemblies')) -Recurse -Exclude Microsoft.*
    if ($LASTEXITCODE -ne 0)
    {
        throw "Build failed"
    }
}
finally
{
    Pop-Location
}
