#!/bin/bash
echo $COSIGN_KEY > cosign.key
cat cosign.key
cosign login ghcr.io -u $GHCR_USER -p $GHCR_PASS
cosign sign -a ORCA_SCAN_FAILED=$SCAN_FAILED --key cosign.key $IMAGE
