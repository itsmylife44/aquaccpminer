#!/usr/bin/env bash
# This code is included in /hive/bin/custom function

. /hive/custom/aquaccpminer/h-manifest.conf
log=/hive/custom/$CUSTOM_NAME/test.log

[[ -z $CUSTOM_TEMPLATE ]] && echo -e "${YELLOW}CUSTOM_TEMPLATE is empty${NOCOLOR}" && return 1
[[ -z $CUSTOM_CONFIG_FILENAME ]] && echo -e "${RED}No CUSTOM_CONFIG_FILENAME is set${NOCOLOR}" && return 1


echo "pool" > $CUSTOM_CONFIG_FILENAME
if [ -n "$WORKER_NAME" ];
	then WALLETZ=$CUSTOM_TEMPLATE/$WORKER_NAME;
else
	WALLETZ=$CUSTOM_TEMPLATE
echo $WALLETZ >> $CUSTOM_CONFIG_FILENAME
echo 0 >> $CUSTOM_CONFIG_FILENAME
echo 150000 >> $CUSTOM_CONFIG_FILENAME