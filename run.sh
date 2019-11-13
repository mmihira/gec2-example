#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
PARENTDIR="$(dirname "$DIR")"

if [[ -n "$GEC2_EXAMPLE_CRED_FILE_PATH" ]]; then
  echo "Using credentails path $GEC2_EXAMPLE_CRED_FILE_PATH"
else
  echo "Path to NECTAR credentials file path must be set at GEC2_EXAMPLE_CRED_FILE_PATH"
  exit
fi

if [[ -n "$GEC2_EXAMPLE_DEPLOY_SSH_PRIVATE_KEY_FILE_PATH" ]]; then
  echo "Using SSH file path $GEC2_EXAMPLE_DEPLOY_SSH_PRIVATE_KEY_FILE_PATH"
else
  echo "Path to instance ssh private key access file must be set at GEC2_EXAMPLE_DEPLOY_SSH_PRIVATE_KEY_FILE_PATH"
  exit
fi

"$DIR"/cmd.sh \
  -c="$GEC2_EXAMPLE_CRED_FILE_PATH" \
  -r=ap-southeast-2 \
  -l=$DIR/deploy/context \
  -s="$GEC2_EXAMPLE_DEPLOY_SSH_PRIVATE_KEY_FILE_PATH" \
  --roles=$DIR/deploy/roles \
  --logs=$DIR/deploy/logs \
  -x="$*"

