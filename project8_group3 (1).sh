#!/bin/bash

# Retrieve the Security Group ID for the specified group name
SECURITY_GROUP_ID=$(aws ec2 describe-security-groups \
    --filters "Name=group-name,Values=DB-SG" \
    --query "SecurityGroups[*].GroupId" \
    --output text)

# Display the Security Group ID
echo "Security Group ID: $SECURITY_GROUP_ID"


# TASK 1 (Create the RDS instance using the retrieved Security Group ID)
aws rds create-db-instance \
    --db-instance-identifier inventory-db \
    --db-instance-class db.t3.micro \
    --engine mysql \
    --master-username admin \
    --master-user-password lab-password \
    --allocated-storage 20 \
    --storage-type gp2 \
    --vpc-security-group-ids "$SECURITY_GROUP_ID" \
    --db-subnet-group-name lab-db-subnet-group \
    --backup-retention-period 7 \
    --no-multi-az \
    --db-name inventory \
    --region us-east-1



# TASK 2 (Retrieve the endpoint address of the created RDS instance)
aws rds describe-db-instances \
    --db-instance-identifier inventory-db \
    --query "DBInstances[0].Endpoint.Address" \
    --output text

    