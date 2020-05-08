. .\version.ps1

Write-Host "Building cortside/${image}:${version}"

docker build --rm --build-arg VERSION=${version} -t cortside/${image}:${version} -f Dockerfile .

