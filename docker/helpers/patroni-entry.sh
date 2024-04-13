#!/bin/bash
# NODE_IP=$(hostname -i | awk '{print $1}')
export PATH=$PATH:/usr/lib/postgresql/16/bin
NODE_NAME=$(hostname)
NODE_NUMBER=$(echo "$NODE_NAME" | cut -d "-" -f 2)
sed -i "s/<pg-host>/$NODE_NAME/g" "$MY_PATRONI_CONFIG_FILE"
sed -i "s/<etcd-host>/etcd-$NODE_NUMBER/g" "$MY_PATRONI_CONFIG_FILE"