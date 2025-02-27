# Define the paths
$galaxyRaidersPath = "C:/Code/xbreadbin.github.io/galaxy-raiders"
$sourcePath = "C:/Code/js/toast-web/dist/space-invaders"

# Delete all files in the galaxy-raiders subfolder but not the folder itself
Get-ChildItem -Path $galaxyRaidersPath -File -Recurse | Remove-Item -Force

# Copy all files recursively from the source path to the galaxy-raiders subfolder
Copy-Item -Path "$sourcePath\*" -Destination $galaxyRaidersPath -Recurse -Force