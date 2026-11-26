# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Self-hosted server for Tronbyt/Tidbyt LED matrix displays (prebuilt binary)"
HOMEPAGE="https://github.com/tronbyt/server"
SRC_URI="amd64? ( https://github.com/tronbyt/server/releases/download/v${PV}/tronbyt-server-linux-amd64 -> ${P}-amd64 )"
S="${WORKDIR}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="-* ~amd64"
RESTRICT="strip"

RDEPEND="
	acct-group/tronbyt
	acct-user/tronbyt
	media-libs/libwebp:=
"
DEPEND="${RDEPEND}"

QA_PREBUILT="usr/bin/tronbyt-server"

src_unpack() {
	:
}

src_install() {
	newbin "${DISTDIR}/${P}-amd64" tronbyt-server

	newinitd "${FILESDIR}/tronbyt-server.initd" tronbyt-server
	newconfd "${FILESDIR}/tronbyt-server.confd" tronbyt-server

	keepdir /var/lib/tronbyt
	fowners tronbyt:tronbyt /var/lib/tronbyt
	fperms 0750 /var/lib/tronbyt

	keepdir /var/log/tronbyt
	fowners tronbyt:tronbyt /var/log/tronbyt
	fperms 0750 /var/log/tronbyt
}
