# create s3 bucket
aws s3 mb s3://dagistan-sam

# package
aws cloudformation package --s3-bucket dagistan-sam --template-file template.yaml --output-template-file gen/template-generated.yaml
# sam package...    instead of   aws cloudformation package     can be used

# deploy
aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM
# sam deploy...    instead of    aws cloudformation deploy     can be used
