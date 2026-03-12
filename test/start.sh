#!/bin/bash

curl -fsSL https://raw.githubusercontent.com/kdinstall/docker-base/master/script/start.sh | REPO_USER=kdinstall REPO_NAME=docker-base bash -s -- -test
