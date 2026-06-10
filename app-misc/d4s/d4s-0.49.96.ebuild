# Copyright 2024 Gentoo Authors
# Distributed under the terms of the Apache-2.0 license

EAPI=8

DESCRIPTION="Master Docker like a pro, right from your terminal"
HOMEPAGE="https://d4scli.io https://github.com/jr-k/d4s"

BASE_URI="https://github.com/jr-k/d4s/releases/download/v${PV}"
SRC_URI="
    amd64? ( ${BASE_URI}/d4s_${PV}_linux_amd64.tar.gz )
    arm64? ( ${BASE_URI}/d4s_${PV}_linux_arm64.tar.gz )
    arm? ( ${BASE_URI}/d4s_${PV}_linux_armv7.tar.gz )
    x86? ( ${BASE_URI}/d4s_${PV}_linux_x86.tar.gz )
"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

RDEPEND=""
DEPEND=""

S="${WORKDIR}"

QA_PREBUILT="usr/bin/d4s"

src_install() {
    dobin d4s
    dodoc README.md LICENSE
}
