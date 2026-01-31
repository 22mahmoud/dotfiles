#!/bin/sh
# Count unread emails in maildir

mail_dir="$HOME/.local/share/mail/personal/INBOX/new"

if [ -d "$mail_dir" ]; then
	find "$mail_dir" -mindepth 1 -maxdepth 1 -type f 2>/dev/null | wc -l
else
	echo 0
fi
