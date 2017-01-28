FROM ubuntu:14.04

ARG CHEF_VERSION=12.17.44
ENV CHEF_DOWNLOAD_URL https://packages.chef.io/files/stable/chef/${CHEF_VERSION}/ubuntu/14.04/chef_${CHEF_VERSION}-1_amd64.deb

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends curl \
      && curl -kfsSL "$CHEF_DOWNLOAD_URL" -o chefdk_${CHEF_VERSION}-1_amd64.deb \
      && dpkg -i chefdk_${CHEF_VERSION}-1_amd64.deb \
      && rm chefdk_${CHEF_VERSION}-1_amd64.deb \
      && rm -rf /var/lib/apt/lists/*
