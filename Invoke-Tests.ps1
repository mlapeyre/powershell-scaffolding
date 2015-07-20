function Invoke-Tests { 
    <#
        .SYNOPSIS
            Execute the tests using Pester.
        .DESCRIPTION
            Execute The tests using Pester.
            The tests must be located in the "tests" folder and be named <something>.Tests.ps1
        .EXAMPLE
            Invoke-Tests
            TODO
        .NOTES
            Name: Invoke-Tests
            Author: Martial Lapeyre
            Date Created: 16 July 2015
    #>

    Process {
        $currentPath=$PSScriptRoot;
        $testDirectory= Join-Path -Path "$currentPath" -ChildPath 'tests'
        $srcDirectory= Join-Path -Path "$currentPath" -ChildPath 'src'
        $pesterModulePath= Join-Path -Path "$currentPath" -ChildPath 'packages\Pester.3.3.9\tools\Pester.psm1'

        Import-Module "$pesterModulePath"; 
        Invoke-Pester -Path "$testDirectory" -Strict ;
        }
}
