#!/bin/bash

# Variables
AMI_ID="ami-0e0e417dfa2028266"  # Replace with your AMI ID
INSTANCE_TYPE="t2.micro"
KEY_NAME="jenkins1"        # Replace with your key pair name
SECURITY_GROUP="sg-00b5a01da30948742"     # Replace with your security group ID
SUBNET_ID="subnet-00d4449399bba6d92"       # Replace with your subnet ID

# Create EC2 instance
aws ec2 run-instances \
    --image-id $AMI_ID \
    --count 1 \
    --instance-type $INSTANCE_TYPE \
    --key-name $KEY_NAME \
    --security-group-ids $SECURITY_GROUP \
    --subnet-id $SUBNET_ID \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=MyInstance}]'

echo "EC2 instance created successfully."
