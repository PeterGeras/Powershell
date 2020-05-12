set-location c:\
	
# Admin or Local
$Admin = (([Security.Principal.WindowsPrincipal] ` [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
$WindowTitle = "PS "
IF ($Admin) {
	$WindowTitle = $WindowTitle + "ADMIN "
}


$foregroundColor = 'white'
$time = Get-Date
$psVersion= $host.Version.Major
$curUser= (Get-ChildItem Env:\USERNAME).Value
$curComp= (Get-ChildItem Env:\COMPUTERNAME).Value
 
Write-Host "Greetings, $curUser!" -foregroundColor $foregroundColor
Write-Host "It is: $($time.ToLongDateString())"
Write-Host "You're running PowerShell version: $psVersion" -foregroundColor Green
Write-Host "Your computer name is: $curComp" -foregroundColor Green
 
function Prompt {

	$curtime = Get-Date
	
	Write-Host -NoNewLine "$" -foregroundColor Green
	Write-Host -NoNewLine "[" -foregroundColor Yellow
	Write-Host -NoNewLine ("{0:HH}:{0:mm}:{0:ss}" -f (Get-Date)) -foregroundColor $foregroundColor
	Write-Host -NoNewLine "]" -foregroundColor Yellow
	Write-Host -NoNewLine " >" -foregroundColor Red
	
	$WindowTitle = $WindowTitle + "> $curUser > $((Get-Location).Path)"
	$host.UI.RawUI.WindowTitle = $WindowTitle
	
	Return " "
	
}