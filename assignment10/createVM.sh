#!/usr/bin/env bash

echo $1 > token-file

gcloud config set project $2
gcloud compute instances create ga-demo --zone=us-central1-a --machine-type=e2-medium  --network-interface=network=cg-vpc,subnet=cg-us-central1-subnet --tags=web-server --access-token-file=token-file
