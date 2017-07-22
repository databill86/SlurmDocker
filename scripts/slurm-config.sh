#!/bin/bash

LEADER=${1:-"leader"}
NODES=${2:-"leader"}
CPUS=${3:-"ThreadsPerCore=2 CoresPerSocket=8 Sockets=2"}

sed -e "s/XXX/$LEADER/" -e "s/YYY/$NODES/" -e "s/ZZZ/$CPUS/" \
    /usr/local/etc/slurm.conf.template > /usr/local/etc/slurm.conf
