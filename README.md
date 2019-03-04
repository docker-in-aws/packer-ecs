# Docker in AWS Packer ECS Repository

## Introduction

This repository provides builds a custom Elastic Container Service (ECS) Amazon Machine Image (AMI) for use with the AWS Elastic Container Service, as described in the Packt publication [Docker on Amazon Web Services](https://www.amazon.com/Docker-Amazon-Web-Services-applications-ebook/dp/B07BJKNTS3).

## Amazon Linux Versions

As of October 2018, the ECS AMI is published for both [Amazon Linux 1](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html) and [Amazon Linux 2](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/al2ami.html).

The book covers how to build a custom ECS AMI for Amazon Linux 1, as support for Amazon Linux 2 was not released until after the book was published.

Amazon have indicated the Amazon Linux 1 ECS AMI will not be supported after June 30, 2020, so it is recommended to review and use the Amazon Linux 2 build scripts included in this repository.

The complete Amazon Linux 1 scripts as described in the book are included on the [master branch](https://github.com/docker-in-aws/packer-ecs/tree/master):

```
$ git clone https://github.com/docker-in-aws/packer-ecs.git
$ cd packer-ecs
$ git checkout master
```

The equivalent Amazon Linux 2 scripts are included on the [amazon_linux_2 branch](https://github.com/docker-in-aws/packer-ecs/tree/amazon_linux_2):

```
$ git clone https://github.com/docker-in-aws/packer-ecs.git
$ cd packer-ecs
$ git checkout amazon_linux_2
```