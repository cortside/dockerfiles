. .\version.ps1

Write-Host "Building cortside/${image}:${version}"

docker build --build-arg VERSION=${version} --build-arg OSVERSION=${osVersion} -t cortside/${image}:latest -f Dockerfile .
docker tag cortside/${image}:latest cortside/${image}:${version}
