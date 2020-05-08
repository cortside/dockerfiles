. .\version.ps1

Write-Host "Building cortside/${image}:${version}"

docker rm --force dotnetcore
docker rmi --force cortside/${image}:${version}
docker image prune --force
docker build --rm --build-arg VERSION=${version} -t cortside/${image}:${version} -f Dockerfile .

