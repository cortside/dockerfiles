. .\version.ps1

docker run -d --name dotnetcore --restart=always -P cortside/${image}:${version}
docker ps | select-string "cortside"
