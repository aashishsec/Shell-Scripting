#!/bin/bash

############
#
#Author: Aashish
#Date: 29/01/2024
#Version: 1.0.0
# Generating AWS Resource Tracker using CronJobs.
# PreEqu:Install AWSCLI and Configure AWS Profile. 
# Run the Script.
#
############

set -x

# AWS S3
echo "Printing the List of S3"
aws s3 ls >> resourceTracker

# AWS EC2
echo "Printing the List of EC2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceID'  >> resourceTracker

# AWS Lambda
echo "Printing the List of Lambda"
aws lambda list-functions  >> resourceTracker

# AWS IAM
echo "Printing the List of IAM"
aws iam list-users >> resourceTracker 



