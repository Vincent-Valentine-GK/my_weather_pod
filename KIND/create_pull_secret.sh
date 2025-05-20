# Create pull secret entry for GitHub Registry

kubectl create secret docker-registry github-pull-secret \
--docker-server=ghcr.io \
--docker-username=SVC_123 \
--docker-password=$GITHUB_TOKEN \
--docker-email=$EMAIL \
--namespace=namespace

# Create pull secret entry for IBMRegistry
kubectl create secret docker-registry ibm-pull-secret \
--docker-server=cp.icr.io \
--docker-username=cp \
--docker-password=$IBM_TOKEN \
--docker-email=$EMAIL \
--namespace=namespace

# Create pull secret entry for AWS Registry
# Example: 123456789012.dkr.ecr.us-west-2.amazonaws.com
kubectl create secret docker-registry ecr-pull-secret \
--docker-server=aws_account_id.dkr.ecr.region.amazonaws.com \
--docker-username=cp \
--docker-password=$AWS_TOKEN \
--docker-email=$EMAIL \
--namespace=namespace
