#####################
#Script: Backup_Passwords.sh
#Author: fixer
#Version: 1.0
#Description: To Compress && Backup KeePassXC Wallet On SDCard Once a week to safeguard saved passwords
#####################

#!/bin/bash

#The Path where keepass db is located
DB_PATH="$1"

#The path where we want to back it up, Preferably an external drive or in future I'll add support for cloud/ google drive if possible
BACKUP_DIR="$2"

#Check if source file Exists??
if [[ ! -f "$DB_PATH" ]]; then
    echo "Error: KeePassXC DB Does NOT Exist @ $DB_PATH"
    exit 1
fi

#Check if the Backup directory Exists??

if [[ ! -d "$BACKUP_DIR" ]]; then

    echo "Backup Directory Does not Exist... Creating it!"
    mkdir -p $BACKUP_DIR
    echo "Created a Backup Directory!"

fi

#Generating Timestamp 
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

cp "$DB_PATH" "$BACKUP_DIR/KeePass_Backup_$TIMESTAMP.kdbx"

echo "Backup created at $BACKUP_DIR/KeePassBackup_$TIMESTAMP.kdbx"