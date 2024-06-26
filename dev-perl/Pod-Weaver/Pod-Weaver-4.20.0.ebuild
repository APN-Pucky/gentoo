# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=RJBS
DIST_VERSION=4.020
inherit perl-module

DESCRIPTION="Weave together a Pod document from an outline"

SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	>=dev-perl/Config-MVP-2.0.0
	dev-perl/Config-MVP-Reader-INI
	dev-perl/DateTime
	virtual/perl-File-Spec
	dev-perl/List-MoreUtils
	>=virtual/perl-Scalar-List-Utils-1.330.0
	>=dev-perl/Log-Dispatchouli-1.100.710
	>=dev-perl/Mixin-Linewise-0.103.0
	dev-perl/Module-Runtime
	dev-perl/Moose
	dev-perl/Params-Util
	>=dev-perl/Pod-Elemental-0.100.220
	>=dev-perl/String-Flogger-1.0.0
	>=dev-perl/String-Formatter-0.100.680
	dev-perl/String-RewritePrefix
	dev-perl/Text-Template
	virtual/perl-Text-Tabs+Wrap
	dev-perl/namespace-autoclean
"
BDEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/PPI
		dev-perl/Software-License
		dev-perl/Test-Differences
		>=virtual/perl-Test-Simple-0.960.0
	)
"
