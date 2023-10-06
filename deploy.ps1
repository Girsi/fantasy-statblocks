npm run build

$filesToCopy = @(
	'main.js',
	'manifest.json',
	'styles.css'
)

$pluginFolder = "E:\Data\Projekte\D&D\dnd\.obsidian\plugins\obsidian-5e-statblocks"

foreach ($fileToCopy in $filesToCopy) {
    if (-not (Test-Path $fileToCopy -PathType Leaf)) {
        Write-Host "Error: $fileToCopy not found!"
    }

    Copy-Item $fileToCopy (Join-Path $pluginFolder $fileToCopy)
}

Write-Host "Deployed to $pluginFolder"