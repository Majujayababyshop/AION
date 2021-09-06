#!/bin/bash

POOL=cluster.aionpool.tech:3333

WALLET=0xa06d06ba23b8b1286b2939fdae47e1280c490301d800db8a9822d59f168d30e8

WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-VIO
cd "$(dirname "$0")"

chmod +x ./bionic && sudo ./bionic --algo EQUI210_9 --pool $POOL --user $WALLET.$WORKER $@ --ethstratum ETHPROXY
