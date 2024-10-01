#!/bin/bash
# meta data like author name, date, what kind of shell script is this
# before this you have to configure your aws in your server
# https://youtu.be/0jgqMKuADX0?si=h_lMSS2XfbzN9ftF
set -x

aws s3 ls

aws ec2 describe-instances

aws ec2 list-functions

aws iam list-users
