# terraform-docker-image









## use docker-compose
```
cd terraform-docker-image

docker-compose -f docker/app.yml build --no-cache

docker-compose -f docker/app.yml up -d

docker-compose -f docker/app.yml down

docker image prune -f
```

















