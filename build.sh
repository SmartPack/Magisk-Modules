#!/bin/bash

#
# #####	Variables to be set manually...	#####
#

MODULE_NAME="Microphone-boost_LOS-15.1_kltexxx"

MODULE_VERSION="1.1"

MODULE_DATE="$(date +"%Y%m%d")"

COPYRIGHT="sunilpaulmathew@xda-developers.com"

#
# #####	The End	#####
#

#
# System variables. Please do not touch unless you know what you are doing... 
#

COLOR_RED="\033[0;31m"
COLOR_GREEN="\033[1;32m"
COLOR_NEUTRAL="\033[0m"
PROJECT_ROOT=$PWD

echo -e $COLOR_GREEN"\n Generating $MODULE_NAME v. $MODULE_VERSION\n"$COLOR_NEUTRAL
#
echo -e $COLOR_GREEN"\n (c) $COPYRIGHT\n"$COLOR_NEUTRAL

OUTPUT_FILE="$MODULE_NAME-v.$MODULE_VERSION-Magisk-$MODULE_DATE.zip"

# generating 'output' folder

if [ ! -d "$PROJECT_ROOT/output/" ]; then
	mkdir $PROJECT_ROOT/output/
fi

# generating recovery flashable zip file

zip -r9 --exclude=*build.sh* --exclude=*placeholder* --exclude=*.gitignore* --exclude=*.git/* --exclude=*output/* output/$OUTPUT_FILE *

echo -e $COLOR_GREEN"\n everything done... $OUTPUT_FILE is generated in the 'output' folder...\n"$COLOR_NEUTRAL
