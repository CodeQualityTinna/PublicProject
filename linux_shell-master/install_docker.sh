#!/bin/bash

echo "step 1: 安装必要的一些系统工具"
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

echo "Step 2: 添加软件源信息"
sudo yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
echo "Step 3: 更新并安装 Docker-CE"
sudo yum makecache fast
sudo yum -y install docker-ce

echo "Step 4: 开启Docker服务"
sudo service docker start
