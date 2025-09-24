# KeePassXC Backup Script

**Script Name:** `Backup_Passwords.sh`  
**Author:** fixer  
**Version:** 1.0  
**Description:** A Bash script to compress and backup your KeePassXC database on a weekly basis, safeguarding your saved passwords.

---

## Features

- Validates the existence of the source KeePassXC database.
- Creates the backup directory if it does not exist.
- Backs up the database with a timestamp (`YYYYMMDD_HHMMSS`) for versioning.
- Easy to integrate with cron for automated weekly backups.

---

## Requirements

- Linux / macOS system with Bash installed.
- Mounted storage or directory for backup.
- Read/write permissions on the source file and backup directory.

---

## Usage

```bash
# Make the script executable (first time only)
chmod +x Backup_Passwords.sh

# Run the script
./Backup_Passwords.sh /path/to/your/keepass.kdbx /path/to/backup/directory

## Example
./Backup_Passwords.sh /home/almas/Secrets/Passwords.kdbx /run/media/almas/ALMAS/Backup

## Output
Backup created at /run/media/almas/ALMAS/Backup/KeePass_Backup_20250924_235500.kdbx

Notes

Always provide absolute paths for reliability, especially when automating via cron.

The script currently creates a new backup each time it runs. Consider adding a backup rotation or compression for storage efficiency.

Ensure your external drive or backup location is mounted and accessible before running the script.
