docker rm --force dotnetcore
docker rmi --force cortside/dotnetcore:3.1-alpine
docker image prune --force

