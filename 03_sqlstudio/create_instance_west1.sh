#!/bin/bash
gcloud sql instances create flights2 \
    --tier=db-n1-standard-1 --activation-policy=ALWAYS --region=us-west1

echo "Please go to the GCP console and change the root password of the instance"
