#!/bin/bash

CURRENTDIR="$(pwd)"
sudo mkdir -p /opt/sds/ingestion/examples/orders-demo

sudo cp -r $CURRENTDIR/orders-demo/* /opt/sds/ingestion/examples/orders-demo

sudo mkdir -p /opt/sds/fakenator

sudo cp $CURRENTDIR/fakenator/* /opt/sds/fakenator
sudo rm /opt/sds/fakenator/log4j.properties

sudo mkdir -p /etc/sds/fakenator
sudo cp $CURRENTDIR/fakenator/log4j.properties /etc/sds/fakenator

sudo mkdir -p /opt/sds/ingestion/plugins.d/stratio-json-morphline 
sudo cp -r $CURRENTDIR/stratio-json-morphline/* /opt/sds/ingestion/plugins.d/stratio-json-morphline

sudo chmod +x /opt/sds/fakenator/*

printf "Set up successfully"
	












