# terraform-docker-image


## Summary
return [Summary](#summary)




<!-- TOC -->

- [terraform-docker-image](#terraform-docker-image)
    - [Summary](#summary)
    - [container set up](#container-set-up)
        - [check version](#check-version)
    - [use docker-compose](#use-docker-compose)

<!-- /TOC -->




---

## container set up

> ubuntu:22.04 <br>
> Install terraform v1.4.0 <br>
> Install AWS-cli v2 <br>
> Install terraformer v0.8.24 <br>


### check version
```
terraform -v

aws --version

terraformer -v
```






## use docker-compose
```
cd terraform-docker-image

docker-compose -f docker/app.yml build --no-cache

docker-compose -f docker/app.yml up -d

docker-compose -f docker/app.yml down

docker image prune -f
```

















