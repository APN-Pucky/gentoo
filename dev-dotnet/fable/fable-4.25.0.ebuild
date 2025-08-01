# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DOTNET_PKG_COMPAT="9.0"
NUGETS="
altcover@5.3.675
blackfox.commandline@1.0.0
buildalyzer.logger@5.0.1
buildalyzer@5.0.1
eluciusftw.spectrecoff@0.47.28
expecto@10.1.0
fable.ast@4.0.0
fable.browser.blob@1.1.4
fable.browser.dom@2.4.4
fable.browser.event@1.4.4
fable.browser.event@1.4.5
fable.browser.gamepad@1.0.3
fable.browser.webstorage@1.0.4
fable.core@3.0.0
fable.core@3.1.2
fable.core@3.1.5
fable.core@3.1.6
fable.core@3.2.7
fable.core@3.2.8
fable.core@4.2.0
fable.fluentui@0.7.0
fable.jester@0.33.0
fable.jsonprovider@1.1.1
fable.node@1.0.2
fable.promise@2.2.2
fable.react@7.0.1
fable.react@7.4.0
fable.react@8.0.1
fable.reacttestinglibrary@0.33.0
fake.core.context@6.1.0
fake.core.environment@6.1.0
fake.core.fakevar@6.1.0
fake.core.string@6.1.0
fake.core.trace@6.1.0
fake.io.filesystem@6.1.0
feliz.compilerplugins@2.0.0-prerelease-002
feliz@1.47.0
feliz@2.0.0-prerelease-002
fsharp.analyzers.build@0.3.0
fsharp.analyzers.sdk@0.27.0
fsharp.compiler.service@43.8.400
fsharp.core@4.2.3
fsharp.core@4.3.4
fsharp.core@4.7.0
fsharp.core@4.7.1
fsharp.core@4.7.2
fsharp.core@6.0.1
fsharp.core@6.0.2
fsharp.core@7.0.200
fsharp.core@7.0.400
fsharp.core@8.0.301
fsharp.core@8.0.400
fsharp.core@9.0.100
fsharp.data.adaptive@1.2.14
fsharp.systemtextjson@1.2.42
fsharp.umx@1.1.0
g-research.fsharp.analyzers@0.8.0
ionide.analyzers@0.8.0
mcmaster.netcore.plugins@1.4.0
microsoft.build.framework@16.4.0
microsoft.build.framework@16.9.0
microsoft.build.tasks.core@16.4.0
microsoft.build.tasks.core@16.9.0
microsoft.build.tasks.git@8.0.0
microsoft.build.utilities.core@16.4.0
microsoft.build.utilities.core@16.9.0
microsoft.build@15.3.409
microsoft.build@16.4.0
microsoft.build@16.9.0
microsoft.codecoverage@17.10.0
microsoft.csharp@4.0.1
microsoft.dotnet.platformabstractions@2.1.0
microsoft.dotnet.platformabstractions@3.1.6
microsoft.extensions.configuration.abstractions@8.0.0
microsoft.extensions.configuration.binder@2.1.1
microsoft.extensions.configuration.binder@8.0.0
microsoft.extensions.configuration@8.0.0
microsoft.extensions.dependencyinjection.abstractions@2.1.1
microsoft.extensions.dependencyinjection.abstractions@8.0.0
microsoft.extensions.dependencyinjection@8.0.0
microsoft.extensions.dependencymodel@2.1.0
microsoft.extensions.dependencymodel@5.0.0
microsoft.extensions.logging.abstractions@2.1.1
microsoft.extensions.logging.abstractions@6.0.0
microsoft.extensions.logging.abstractions@8.0.0
microsoft.extensions.logging.configuration@8.0.0
microsoft.extensions.logging.console@8.0.0
microsoft.extensions.logging@2.1.1
microsoft.extensions.logging@8.0.0
microsoft.extensions.options.configurationextensions@8.0.0
microsoft.extensions.options@2.1.1
microsoft.extensions.options@8.0.0
microsoft.extensions.primitives@8.0.0
microsoft.net.test.sdk@17.10.0
microsoft.netcore.platforms@1.0.1
microsoft.netcore.platforms@1.1.0
microsoft.netcore.platforms@3.1.0
microsoft.netcore.platforms@5.0.0
microsoft.netcore.targets@1.0.1
microsoft.netcore.targets@1.1.0
microsoft.sourcelink.common@8.0.0
microsoft.sourcelink.github@8.0.0
microsoft.testplatform.objectmodel@17.10.0
microsoft.testplatform.testhost@17.10.0
microsoft.win32.registry@4.3.0
microsoft.win32.systemevents@4.7.0
mono.cecil@0.11.4
msbuild.structuredlogger@2.1.507
msbuildpipelogger.server@1.1.6
netstandard.library@2.0.3
newtonsoft.json@13.0.1
newtonsoft.json@9.0.1
nuget.frameworks@6.0.0
octokit@8.0.0
runtime.any.system.collections@4.3.0
runtime.any.system.diagnostics.tools@4.3.0
runtime.any.system.diagnostics.tracing@4.3.0
runtime.any.system.globalization@4.3.0
runtime.any.system.io@4.3.0
runtime.any.system.reflection.extensions@4.3.0
runtime.any.system.reflection.primitives@4.3.0
runtime.any.system.reflection@4.3.0
runtime.any.system.resources.resourcemanager@4.3.0
runtime.any.system.runtime.handles@4.3.0
runtime.any.system.runtime.interopservices@4.3.0
runtime.any.system.runtime@4.3.0
runtime.any.system.text.encoding.extensions@4.3.0
runtime.any.system.text.encoding@4.3.0
runtime.any.system.threading.tasks@4.3.0
runtime.debian.8-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.fedora.23-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.fedora.24-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.native.system.security.cryptography.openssl@4.3.0
runtime.native.system@4.0.0
runtime.native.system@4.3.0
runtime.opensuse.13.2-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.opensuse.42.1-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.osx.10.10-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.rhel.7-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.ubuntu.14.04-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.ubuntu.16.04-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.ubuntu.16.10-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.unix.system.diagnostics.debug@4.3.0
runtime.unix.system.io.filesystem@4.3.0
runtime.unix.system.private.uri@4.3.0
runtime.unix.system.runtime.extensions@4.3.0
semver@2.3.0
simpleexec@12.0.0
sixlabors.imagesharp@2.1.3
source-map-sharp@1.0.9
spectre.console.imagesharp@0.47.0
spectre.console.json@0.47.0
spectre.console@0.47.0
system.appcontext@4.1.0
system.buffers@4.3.0
system.buffers@4.5.1
system.codedom@4.4.0
system.collections.immutable@5.0.0
system.collections.immutable@8.0.0
system.collections@4.0.11
system.collections@4.3.0
system.diagnostics.debug@4.0.11
system.diagnostics.debug@4.3.0
system.diagnostics.diagnosticsource@8.0.0
system.diagnostics.tools@4.0.1
system.diagnostics.tracing@4.3.0
system.drawing.common@4.7.0
system.dynamic.runtime@4.0.11
system.globalization@4.0.11
system.globalization@4.3.0
system.io.filesystem.primitives@4.0.1
system.io.filesystem.primitives@4.3.0
system.io.filesystem@4.0.1
system.io@4.1.0
system.io@4.3.0
system.linq.expressions@4.1.0
system.linq@4.1.0
system.memory@4.5.4
system.memory@4.5.5
system.objectmodel@4.0.12
system.private.uri@4.3.0
system.reflection.emit.ilgeneration@4.0.1
system.reflection.emit.lightweight@4.0.1
system.reflection.emit.lightweight@4.6.0
system.reflection.emit@4.0.1
system.reflection.emit@4.7.0
system.reflection.extensions@4.0.1
system.reflection.metadata@1.6.0
system.reflection.metadata@8.0.0
system.reflection.primitives@4.0.1
system.reflection.primitives@4.3.0
system.reflection.typeextensions@4.1.0
system.reflection.typeextensions@4.7.0
system.reflection@4.1.0
system.reflection@4.3.0
system.resources.extensions@4.6.0
system.resources.resourcemanager@4.0.1
system.resources.resourcemanager@4.3.0
system.runtime.compilerservices.unsafe@5.0.0
system.runtime.compilerservices.unsafe@6.0.0
system.runtime.extensions@4.1.0
system.runtime.extensions@4.3.0
system.runtime.handles@4.0.1
system.runtime.handles@4.3.0
system.runtime.interopservices.runtimeinformation@4.0.0
system.runtime.interopservices@4.1.0
system.runtime.interopservices@4.3.0
system.runtime.serialization.primitives@4.1.1
system.runtime@4.1.0
system.runtime@4.3.0
system.security.accesscontrol@4.7.0
system.security.cryptography.cng@4.7.0
system.security.cryptography.pkcs@4.7.0
system.security.cryptography.xml@4.7.0
system.security.permissions@4.7.0
system.security.principal.windows@4.7.0
system.text.encoding.codepages@4.0.1
system.text.encoding.codepages@5.0.0
system.text.encoding.extensions@4.0.11
system.text.encoding.extensions@4.3.0
system.text.encoding@4.0.11
system.text.encoding@4.3.0
system.text.encodings.web@6.0.0
system.text.encodings.web@8.0.0
system.text.json@4.7.0
system.text.json@6.0.0
system.text.json@6.0.2
system.text.json@8.0.0
system.text.regularexpressions@4.1.0
system.threading.tasks.dataflow@4.9.0
system.threading.tasks.extensions@4.0.0
system.threading.tasks@4.0.11
system.threading.tasks@4.3.0
system.threading@4.0.11
system.threading@4.3.0
system.windows.extensions@4.7.0
system.xml.readerwriter@4.0.11
system.xml.xdocument@4.0.11
thoth.json.net@12.0.0
xunit.abstractions@2.0.3
xunit.analyzers@1.15.0
xunit.assert@2.9.0
xunit.core@2.9.0
xunit.extensibility.core@2.9.0
xunit.extensibility.execution@2.9.0
xunit.runner.visualstudio@2.8.2
xunit@2.9.0
"

inherit check-reqs dotnet-pkg

DESCRIPTION="F# to JavaScript, TypeScript, Python, Rust and Dart Compiler"
HOMEPAGE="http://fable.io/
	https://github.com/fable-compiler/fable/"

if [[ "${PV}" == *9999* ]] ; then
	inherit git-r3

	EGIT_REPO_URI="https://github.com/fable-compiler/${PN}"
else
	SRC_URI="https://github.com/fable-compiler/${PN}/archive/refs/tags/${PV}.tar.gz
		-> ${P}.gh.tar.gz"
	S="${WORKDIR}/${P^}"

	KEYWORDS="amd64"
fi

SRC_URI+=" ${NUGET_URIS} "

LICENSE="Apache-2.0 MIT"
SLOT="0"

CHECKREQS_DISK_BUILD="2G"
DOTNET_PKG_PROJECTS=(
	src/Fable.Cli/Fable.Cli.fsproj
)
DOTNET_PKG_BAD_PROJECTS=(
	src/quicktest/QuickTest.fsproj
	tests/Js/Main/Fable.Tests.fsproj
	tests/Rust/Fable.Tests.Rust.fsproj
)

pkg_setup() {
	check-reqs_pkg_setup
	dotnet-pkg_pkg_setup
}

src_unpack() {
	dotnet-pkg_src_unpack

	if [[ -n "${EGIT_REPO_URI}" ]] ; then
		git-r3_src_unpack
	fi
}

src_prepare() {
	rm ./Fable.Standalone.sln || die

	if use debug ; then
		DOTNET_PKG_BAD_PROJECTS+=(
			# Seems to hang but in reality it fails with USE="debug", bug #922684
			tests/Python/Fable.Tests.Python.fsproj
		)
	fi

	dotnet-pkg_src_prepare
}
