# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{6,7,8} pypy3 )

inherit bash-completion-r1 distutils-r1

DESCRIPTION="Easy to use progress bars"
HOMEPAGE="https://pypi.org/project/progress/ https://github.com/verigak/progress/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="ISC"
KEYWORDS="~alpha amd64 arm ~arm64 hppa ~ia64 ~m68k ~mips ppc ppc64 ~s390 sparc x86 ~amd64-linux ~x86-linux"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

# Not bundled
RESTRICT="test"

python_test() {
	"${PYTHON}" test_progress.py || die
}
