#!/bin/bash

win_dir=/mnt/u/Users/Teemu/Desktop/edustajat_data_holder/*
wsl_dir=~/git/edustajat/backend/manual_data


if [ -z "$(ls -A /mnt/u/Users/Teemu/Desktop/edustajat_data_holder)" ]; 
then
	echo "Desktop edustajat_data_folder empty"
else
	found_files=$(find $win_dir -exec basename {} \;)

	
	# ANSI escape codes for colors
	BLUE='\033[0;34m'
	NC='\033[0m'
	
	echo -e "Files:\n"
	echo -e "${BLUE}$(find $win_dir -exec basename {} \;)${NC}\n"
	echo "Moved $(find $win_dir -exec basename {} \; -printf '.' | wc -l) file(s)"
	mv $win_dir $wsl_dir

fi




