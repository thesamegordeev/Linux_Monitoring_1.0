#!/bin/bash

TIMEZONE=$(timedatectl show --property=Timezone --value)
OFFSET=$(date +%'z')
echo "$TIMEZONE UTC $OFFSET"
