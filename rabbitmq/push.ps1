. .\version.ps1

Write-Host "Pushing cortside/${image}:${version}"

docker push cortside/${image}:${version}-1803
docker push cortside/${image}:${version}-1809
docker push cortside/${image}:${version}-1903
