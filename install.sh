#!/usr/bin/env bash

set -exv

atcloc="$1"
cdninabox="$atcloc/infrastructure/cdn-in-a-box"

if [[ ! -d $atcloc ]]; then
    echo "Usage: $0 <location of apache/trafficcontrol"
    exit 1
fi

if [[ ! -d $cdninabox ]]; then
    echo "$cdninabox not found"
    exit 1
fi

cat rpmsa* | tar xvzf - -C "$cdninabox/."
cat locala* | tar xvzf - -C "$cdninabox/."

docker pull alpine:latest
docker pull basho/riak-kv:ubuntu-2.2.3
docker pull centos/systemd
docker pull centos:7
docker pull debian:stretch
docker pull golang:1.11
docker pull influxdb:1.7.3
docker pull postgres:9.6-alpine
docker pull ubuntu:trusty

