# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

GST_ORG_MODULE=gst-plugins-good
inherit gstreamer-meson

DESCRIPTION="ID3v2/APEv2 tagger plugin for GStreamer"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~loong ~mips ppc ppc64 ~riscv ~sparc x86"

RDEPEND=">=media-libs/taglib-1.9.1:=[${MULTILIB_USEDEP}]"
DEPEND="${RDEPEND}"
