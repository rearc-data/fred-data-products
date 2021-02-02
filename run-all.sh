#!/usr/bin/env bash

# Exit on error. Append "|| true" if you expect an error.
set -o errexit
# Exit on error inside any functions or subshells.
set -o errtrace
# Do not allow use of undefined vars. Use ${VAR:-} to use an undefined VAR
#set -o nounset
# Catch the error in case mysqldump fails (but gzip succeeds) in `mysqldump |gzip`
set -o pipefail
# Turn on traces, useful while debugging but commented out by default
# set -o xtrace

product_urls="product-urls.txt"
product_names="product-names.txt"
products_info="products.jsonl"
products_info_tmp="products-tmp.jsonl"

export S3_BUCKET='rearc-data-provider'
export REGION='us-east-1'
# export PROFILE='guardian-pg'

echo "S3_BUCKET: $S3_BUCKET"
echo "REGION: $REGION"
echo "PROFILE: $PROFILE"

# echo "create products stats file"
# while IFS="" read -r l || [ -n "$l" ]
# do
  
  # l="${l#"${l%%[![:space:]]*}"}"
  # l="$(echo $l | awk '{$1=$1;print}')"
  # p="$(basename $l)"
  # echo "Product Code: $p"

  # DATASET_NAME="fred-$p"
  # PRODUCT_NAME=" | FRED"
  # PRODUCT_ID="blank"
  # SOURCE_URL="https://fred.stlouisfed.org/graph/fredgraph.csv?id=$p"
  # SCHEDULE_CRON="cron(0 5 ? * 3 *)"

  # echo "{\"PRODUCT_CODE\": \"${p}\",\"PRODUCT_URL\": \"${l}\",\"SOURCE_URL\": \"${SOURCE_URL}\",\"DATASET_NAME\": \"${DATASET_NAME}\", \"DATASET_ARN\": \"${DATASET_ARN}\", \"DATASET_ID\":\"${DATASET_ID}\", \"PRODUCT_NAME\": \"${PRODUCT_NAME}\", \"PRODUCT_ID\": \"${PRODUCT_ID}\", \"SCHEDULE_CRON\": \"${SCHEDULE_CRON}\"}" >> "$products_file_init"

# done < ${product_urls}

echo "create first revision of datasets"
while IFS="" read -r p || [ -n "$p" ]; do
  
  echo "Product Code: $p"

  export S3_BUCKET='rearc-data-provider'
  export DATASET_NAME="fred-$p"
  export DATA_SET_ARN=''
  export PRODUCT_NAME=' | FRED'
  export PRODUCT_ID='blank'
  export REGION='us-east-1'
  # export PROFILE='guardian-pg'


  PRODUCT_CODE=$(echo "$p" | jq '.PRODUCT_CODE' | sed -e 's/^"//' -e 's/"$//')
  PRODUCT_URL=$(echo "$p" | jq '.PRODUCT_URL' | sed -e 's/^"//' -e 's/"$//')
  SOURCE_URL=$(echo "$p" | jq '.SOURCE_URL' | sed -e 's/^"//' -e 's/"$//')
  SCHEDULE_CRON=$(echo "$p" | jq '.SCHEDULE_CRON' | sed -e 's/^"//' -e 's/"$//')
  DATASET_NAME=$(echo "$p" | jq -r '.DATASET_NAME' | sed -e 's/^"//' -e 's/"$//')
  DATASET_ARN=$(echo "$p" | jq -r '.DATASET_ARN' | sed -e 's/^"//' -e 's/"$//')
  DATASET_ID=$(echo "$p" | jq -r '.DATASET_ID' | sed -e 's/^"//' -e 's/"$//')
  PRODUCT_NAME=$(echo "$p" | jq -r '.PRODUCT_NAME' | sed -e 's/^"//' -e 's/"$//')
  PRODUCT_ID=$(echo "$p" | jq -r '.PRODUCT_ID' | sed -e 's/^"//' -e 's/"$//')
  
  echo "PRODUCT_CODE: $PRODUCT_CODE"
  echo "PRODUCT_URL: $PRODUCT_URL"
  echo "SOURCE_URL: $SOURCE_URL"
  echo "SCHEDULE_CRON: $SCHEDULE_CRON"
  echo "DATASET_NAME: $DATASET_NAME"
  echo "DATASET_ARN: $DATASET_ARN"
  echo "DATASET_ID: $DATASET_ID"
  echo "PRODUCT_NAME: $PRODUCT_NAME"
  echo "PRODUCT_ID: $PRODUCT_ID"
  echo "products_info_tmp: $products_info_tmp"
  
  # python pre-processing/pre-processing-code/source_data.py

  echo "creating the first dataset revision"
  ./code/init.sh \
      --products_info_file "${products_info_tmp}" \
      --product_code "${PRODUCT_CODE}" \
      --product_url "${PRODUCT_URL}" \
      --source_url "${SOURCE_URL}" \
      --schedule_cron "${SCHEDULE_CRON}" \
      --s3-bucket "${S3_BUCKET}" \
      --dataset-name "${DATASET_NAME}" \
      --product-name "${PRODUCT_NAME}" \
      --product-id "${PRODUCT_ID}" \
      --region "${REGION}" #\
      # --profile "${PROFILE}"

  break

done <${products_info}


  # export S3_BUCKET='rearc-data-provider'
  # export DATASET_NAME='fred-permit'
  # export DATASET_ARN='arn:aws:dataexchange:us-east-1:796406704065:data-sets/d81154d79b433568684b0d0fc9fb89a2'
  # export PRODUCT_NAME='New Private Housing Units Authorized by Building Permits (PERMIT) | FRED'
  # export PRODUCT_ID="prod-hdfruxgupvl7y"
  # export REGION='us-east-1'  

  # #creating a pre-processing zip package, these commands may need to be adjusted depending on folder structure and dependencies
  # (cd pre-processing/pre-processing-code && zip -r pre-processing-code.zip . -x "*.dist-info/*" -x "bin/*" -x "**/__pycache__/*")

  # #upload pre-preprocessing.zip to s3
  # echo "uploading pre-preprocessing.zip to s3"
  # aws s3 cp pre-processing/pre-processing-code/pre-processing-code.zip s3://$S3_BUCKET/$DATASET_NAME/automation/pre-processing-code.zip --region "$REGION" $PROFILE

  # #creating pre-processing cloudformation stack
  # echo "creating pre-processing cloudformation stack"
  # CFN_STACK_NAME="producer-${DATASET_NAME}-preprocessing"
  # aws cloudformation create-stack --stack-name "$CFN_STACK_NAME" --template-body file://pre-processing/pre-processing-cfn.yaml --parameters ParameterKey=S3Bucket,ParameterValue="$S3_BUCKET" ParameterKey=DataSetName,ParameterValue="$DATASET_NAME" ParameterKey=DataSetArn,ParameterValue="$DATASET_ARN" ParameterKey=ProductId,ParameterValue="$PRODUCT_ID" ParameterKey=Region,ParameterValue="$REGION" --region "$REGION" --capabilities "CAPABILITY_AUTO_EXPAND" "CAPABILITY_NAMED_IAM" "CAPABILITY_IAM"$PROFILE

  # echo "waiting for cloudformation stack to complete"
  # aws cloudformation wait stack-create-complete --stack-name "$CFN_STACK_NAME" --region "$REGION$PROFILE"

  # if [[ $? -ne 0 ]]
  # then
  #   echo "Cloudformation stack creation failed"
  #   exit 1
  # fi


# done < ${products_info}