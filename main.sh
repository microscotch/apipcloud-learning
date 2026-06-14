# main.sh
#!/bin/bash
set -euo pipefail

source ../homelab/.secret/pcloud.env
source functions.sh

: ${LOCAL_FILE:?"LOCAL_FILE est obligatoire"}

login
upload "$LOCAL_FILE"
logout
