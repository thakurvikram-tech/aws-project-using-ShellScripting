#!/bin/bash
#Author: Thakurvikram
#Date: 28-may-2024
#version: v1
#This script will report the AWS resource usage
Set -x
#aws s3
#aws ec2
#aws lambda
#aws iam users


#list s3 buckets
echo "print list of s3 buckets"
aws S3 ls > resourceTracker

#list ec2 Instances
echo "print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservation[].Instances[].InstanceId'

#list aws lambda
echo "print list of lambda functions"
aws lambda list-functions >> resourceTracker

#list IAM users
echo "print list of iam users"
aws iam list-users

