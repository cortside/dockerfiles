. .\version.ps1

Write-Host "Building cortside/${image}:${version}"

$osVersion = "1803"
docker build --isolation hyperv --build-arg VERSION=${version} --build-arg OSVERSION=${osVersion} -t cortside/${image}:${version}-${osVersion} -f Dockerfile .

$osVersion = "1809"
docker build --build-arg VERSION=${version} --build-arg OSVERSION=${osVersion} -t cortside/${image}:${version}-${osVersion} -f Dockerfile .

$osVersion = "1903"
docker build --build-arg VERSION=${version} --build-arg OSVERSION=${osVersion} -t cortside/${image}:${version}-${osVersion} -f Dockerfile .
