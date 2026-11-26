# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit acct-user

DESCRIPTION="User for Tronbyt server"
ACCT_USER_ID=-1
ACCT_USER_HOME=/var/lib/tronbyt
ACCT_USER_HOME_OWNER=tronbyt:tronbyt
ACCT_USER_HOME_PERMS=0750
ACCT_USER_GROUPS=( tronbyt )

acct-user_add_deps
