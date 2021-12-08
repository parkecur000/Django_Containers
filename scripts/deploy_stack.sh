aws cloudformation create-stack \
    --stack-name project3-practice-deployment \
    --template-body file://./cfn.yml \
    --region us-east-2 \
    --capabilities CAPABILITY_NAMED_IAM \
    --parameters ParameterKey=SubnetID,ParameterValue='subnet-0dfd7b6649b10efc2'