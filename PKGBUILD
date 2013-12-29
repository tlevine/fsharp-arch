# Maintainer: Thomas Levine <_@thomaslevine.com>
# https://wiki.archlinux.org/index.php/VCS_PKGBUILD_Guidelines#VCS_sources

pkgname=fsharp-git
pkgver=3.0.32
pkgrel=1
pkgdesc="The F# compiler, core library and core tools (open source edition)"
arch=('i686' 'x86_64')
url="https://github.com/fsharp/fsharp"
license=('Apache')
depends=('mono')
makedepends=('git')
source=("$pkgname"::'git://github.com/fsharp/fsharp.git')
md5sums=('SKIP')

pkgver() {
  cd "$srcdir/repo"
  git describe --long | sed -E 's/([^-]*-g)/r\1/;s/-/./g'
}

build() {
  cd "$srcdir/$pkgname"
  ./autogen.sh
  make
}

package() {
  cd "$srcdir/$pkgname"
  make install
}
