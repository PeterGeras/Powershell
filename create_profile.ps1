
$psProfile = $profile.CurrentUserAllHosts
$psDirectory = Split-Path $psProfile
$psCurrProfile = Join-Path $PSScriptRoot "profile.ps1"

If (-Not (Test-Path $psProfile)) {
	If (-Not (Test-Path $psDirectory)) {
		# Create powershell directory
		New-Item -Path $psDirectory -ItemType Directory
	}
	# Copy powershell profile to directory
	Copy-Item -Path $psCurrProfile -Destination $psDirectory
	echo "Created profile at - $psProfile"
}
Else {
	echo "Profile already exists at - $psProfile"
}

Read-Host -Prompt "`nPress Enter to exit"