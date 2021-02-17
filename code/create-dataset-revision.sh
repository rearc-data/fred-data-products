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

# Sets profile variable to an empty value by default, reassigns in while loop below if it was included as a parameter
PROFILE=""

while [[ $# -gt 0 ]]; do
  opt="${1}"
  shift;
  current_arg="$1"
  case ${opt} in
    "-d"|"--data_code") export DATA_CODE="$1"; shift;;
    "-s"|"--source_url") export SOURCE_URL="$1"; shift;;
    "-s"|"--schedule_cron") export SCHEDULE_CRON="$1"; shift;;
    "-s"|"--s3-bucket") export S3_BUCKET="$1"; shift;;
    "-d"|"--dataset-name") export DATASET_NAME="$1"; shift;;
    "-p"|"--product-name") export PRODUCT_NAME="$1"; shift;;
    "-i"|"--product-id") export PRODUCT_ID="$1"; shift;;
    "-r"|"--region") export REGION="$1"; shift;;
    "-f"|"--profile") PROFILE=" --profile $1"; shift;;
    *) echo "ERROR: Invalid option: \""$opt"\"" >&2; exit 1;;
  esac
done

while [[ ${#DATASET_NAME} -gt 53 ]]; do
    echo "dataset-name must be under 53 characters in length, enter a shorter name:"
    read -p "New dataset-name: " DATASET_NAME
    case ${#DATASET_NAME} in
        [1-9]|[1-4][0-9]|5[0-3]) break;;
        * ) echo "Enter in a shorter dataset-name";;
    esac
done

while [[ ${#PRODUCT_NAME} -gt 72 ]]; do
    echo "product-name must be under 72 characters in length, enter a shorter name:"
    read -p "New product-name: " PRODUCT_NAME
    case ${#PRODUCT_NAME} in
        [1-9]|[1-6][0-9]|7[0-2]) break;;
        * ) echo "Enter in a shorter product-name";;
    esac
done


echo "creating dataset on ADX"
DATASET_COMMAND="aws dataexchange create-data-set --asset-type "S3_SNAPSHOT" --description file://code/$DATA_CODE/dataset-description.md --name \"${PRODUCT_NAME}\" --region $REGION --output json $PROFILE"
DATASET_OUTPUT=$(eval $DATASET_COMMAND)
DATASET_ARN=$(echo $DATASET_OUTPUT | tr '\r\n' ' ' | jq -r '.Arn')
DATASET_ID=$(echo $DATASET_OUTPUT | tr '\r\n' ' ' | jq -r '.Id')

echo "DATASET_OUTPUT: $DATASET_OUTPUT"

echo "{\"PRODUCT_CODE\": \"${p}\",\"PRODUCT_URL\": \"${l}\",\"SOURCE_URL\": \"${SOURCE_URL}\",\"DATASET_NAME\": \"${DATASET_NAME}\", \"DATASET_ARN\": \"${DATASET_ARN}\", \"DATASET_ID\":\"${DATASET_ID}\", \"PRODUCT_NAME\": \"${PRODUCT_NAME}\", \"PRODUCT_ID\": \"${PRODUCT_ID}\", \"SCHEDULE_CRON\": \"${SCHEDULE_CRON}\"}" >> "$products_info_tmp"

echo "grabbing dataset revision status"
DATASET_REVISION_STATUS=$(aws dataexchange list-data-set-revisions --data-set-id "$DATASET_ID" --region "$REGION" --query "sort_by(Revisions, &CreatedAt)[-1].Finalized" $PROFILE)

echo "DATA_CODE: DATASET_REVISION_STATUS"