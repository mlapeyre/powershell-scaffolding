#Source the ps1 dependencies for the current module
$moduleRoot = Split-Path -Path $MyInvocation.MyCommand.Path

"$moduleRoot\Functions\*.ps1" |
Resolve-Path |
ForEach-Object { . $_.ProviderPath }



function Get-Function {
	$flutty = Get-Flutty;
	return 'flap'+ $flutty;
}

export-modulemember -function Get-Function