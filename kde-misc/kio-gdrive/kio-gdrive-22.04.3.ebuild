# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

ECM_HANDBOOK="forceoptional"
ECM_TEST="optional"
KDE_GEAR="true"
KDE_ORG_CATEGORY="network"
KFMIN=5.92.0
QTMIN=5.15.4
inherit ecm gear.kde.org

DESCRIPTION="KIO Slave for Google Drive service"
HOMEPAGE="https://apps.kde.org/kio_gdrive/"

LICENSE="GPL-2+"
SLOT="5"
KEYWORDS="amd64 arm64 ~ppc64 ~x86"
IUSE="+kaccounts +share"

REQUIRED_USE="share? ( kaccounts )"

COMMON_DEPEND="
	>=dev-qt/qtgui-${QTMIN}:5
	>=dev-qt/qtwidgets-${QTMIN}:5
	>=kde-apps/libkgapi-19.08.0:5
	>=kde-frameworks/kcoreaddons-${KFMIN}:5
	>=kde-frameworks/ki18n-${KFMIN}:5
	>=kde-frameworks/kio-${KFMIN}:5
	>=kde-frameworks/knotifications-${KFMIN}:5
	kaccounts? ( >=kde-apps/kaccounts-integration-20.08.3:5 )
	!kaccounts? ( dev-libs/qtkeychain:=[qt5(+)] )
	share? ( >=kde-frameworks/purpose-${KFMIN}:5 )
"
DEPEND="${COMMON_DEPEND}
	>=dev-qt/qtnetwork-${QTMIN}:5
"
RDEPEND="${COMMON_DEPEND}
	kaccounts? ( >=kde-apps/kaccounts-providers-20.08.3:5 )
"
BDEPEND="dev-util/intltool"

DOCS=( README.md )

src_configure() {
	local mycmakeargs=(
		$(cmake_use_find_package kaccounts KAccounts)
		$(cmake_use_find_package share KF5Purpose)
	)
	ecm_src_configure
}
