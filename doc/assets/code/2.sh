[root@localhost ~] $ cat /etc/default/useradd
    # useradd defaults file
    GROUP=100               # Max pertence a 100 grupos
    HOME=/home              # Su home cuelga de /home
    INACTIVE=-1             # No está inactivo = activo
    EXPIRE=                 # No expira su cuenta
    SHELL=/bin/bash         # Su shell es bash
    SKEL=/etc/skel          # El directorio donde configurar bashrc
    CREATE_MAIL_SPOOL=yes   # Crea directorio de mail

[root@localhost ~] $ cat /etc/login.defs
# *REQUIRED*
#   Directory where mailboxes reside, _or_ name of file, 
#   relative to the
#   home directory.  If you _do_ define both, 
#   MAIL_DIR takes precedence.
#   QMAIL_DIR is for Qmail
#
#QMAIL_DIR	Maildir
MAIL_DIR	/var/spool/mail
#MAIL_FILE	.mail

# Password aging controls:
#
#	PASS_MAX_DAYS	Maximum number of days a 
#   password may be used.
#	PASS_MIN_DAYS	Minimum number of days 
#   allowed between password changes.
#	PASS_MIN_LEN	Minimum acceptable password length.
#	PASS_WARN_AGE	Number of days warning given before 
#   a password expires.
#
PASS_MAX_DAYS	99999
PASS_MIN_DAYS	0
PASS_MIN_LEN	5
PASS_WARN_AGE	7

#
# Min/max values for automatic uid selection in useradd
#
UID_MIN			  500
UID_MAX			60000

#
# Min/max values for automatic gid selection in groupadd
#
GID_MIN			  500
GID_MAX			60000

#
# If defined, this command is run when removing a user.
# It should remove any at/cron/print jobs etc. owned by
# the user to be removed (passed as the first argument).
#
#USERDEL_CMD	/usr/sbin/userdel_local

#
# If useradd should create home directories for users by default
# On RH systems, we do. This option is overridden with 
# the -m flag on useradd command line.
#
CREATE_HOME	yes

# The permission mask is initialized to this value. If not 
# specified, the permission mask will be initialized to 022.
UMASK           077

# This enables userdel to remove user groups if no members exist.
#
USERGROUPS_ENAB yes

# Use SHA512 to encrypt password.
ENCRYPT_METHOD SHA512 

[root@localhost ~]# cat /etc/login.defs
# *REQUIRED*
#   Directory where mailboxes reside, _or_ name of file, relative to the
#   home directory.  If you _do_ define both, MAIL_DIR takes precedence.
#   QMAIL_DIR is for Qmail
#
#QMAIL_DIR	Maildir
MAIL_DIR	/var/spool/mail
#MAIL_FILE	.mail

# Password aging controls:
#
#	PASS_MAX_DAYS	Maximum number of days a password may be used.
#	PASS_MIN_DAYS	Minimum number of days allowed between 
#   password changes.
#	PASS_MIN_LEN	Minimum acceptable password length.
#	PASS_WARN_AGE	Number of days warning given before a 
#   password expires.
#
PASS_MAX_DAYS	99999
PASS_MIN_DAYS	0
PASS_MIN_LEN	5
PASS_WARN_AGE	7

#
# Min/max values for automatic uid selection in useradd
#
UID_MIN			  500
UID_MAX			60000

#
# Min/max values for automatic gid selection in groupadd
#
GID_MIN			  500
GID_MAX			60000

#
# If defined, this command is run when removing a user.
# It should remove any at/cron/print jobs etc. owned by
# the user to be removed (passed as the first argument).
#
#USERDEL_CMD	/usr/sbin/userdel_local

#
# If useradd should create home directories for users
# by default On RH systems, we do. This option is 
# overridden with the -m flag on useradd command line.
#
CREATE_HOME	yes

# The permission mask is initialized to this value. 
# If not specified, the permission mask
# will be initialized to 022.
UMASK           077

# This enables userdel to remove user groups if no members exist.
#
USERGROUPS_ENAB yes

# Use SHA512 to encrypt password.
ENCRYPT_METHOD SHA512 
