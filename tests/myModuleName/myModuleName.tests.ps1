#Force reloading the tested module
$srcFile = $MyInvocation.MyCommand.Path -replace 'tests\\(.*\\?)(.*?)\.[Tt]ests\.ps1','src\$1$2.psm1'
Import-Module $srcFile -Force

Describe "Get-Function" {
	Context "Function Exists" {
		It "Should Return flapflutty" {
        Get-Function | Should be 'flapflutty'
	}
}
}
