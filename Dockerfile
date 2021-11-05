FROM amazonlinux:latest

# `2021/11/06` 時点で最新の `node.js LTS` と `yarn` のリポジトリを設定
RUN curl -sL https://rpm.nodesource.com/setup_16.x | bash - && \
    curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.rep

RUN yum update -y && yum install -y \
    nodejs && \
    rm -rf /var/cache/yum/* && \
    yum clean all && \
    npm install -g yarn && \
    yarn global add @vue/cli

WORKDIR /app