function Install-Dependencies { 
    <#
        .SYNOPSIS
            Initialize the current project by installing dependencies using NuGet.
        .DESCRIPTION
            Initialize the current project by installing dependencies using NuGet.
        .EXAMPLE
            Install-Dependencies
            Installing 'Pester 3.3.9'.
            Successfully installed 'Pester 3.3.9'.
        .NOTES
            Name: Install-Dependencies
            Author: Martial Lapeyre
            Date Created: 16 July 2015
    #>

    Process {
        $currentPath=$PSScriptRoot;
        $nugetBinary= Join-Path -Path $currentPath -ChildPath '.nuget\NuGet.exe'
        $packageConfig=Join-Path -Path $currentPath -ChildPath '.nuget\packages.config'
        & $nugetBinary restore $packageConfig -SolutionDirectory $currentPath
    }
}
