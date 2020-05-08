. .\version.ps1

Write-Host "Pushing cortside/${image}:${version}"

docker push cortside/${image}:${version}
