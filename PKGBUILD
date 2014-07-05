# Maintainer: M. Plummer (The_NetZ) <ntzrmtthihu777 (at) gmail (dot) com>

_pkgbase=xcursor-starcraft-blue
pkgname=${_pkgbase}-git
pkgver=r7.7b8f3e2
pkgrel=1
pkgdesc="Blue X11 cursors based on the original StarCraft PC game"
arch=("any")
url="https://github.com/ntzrmtthihu777/${_pkgbase}"
license=('GPL')
makedepends=('git' 'xorg-xcursorgen')
provides=('xcursor-starcraft-blue')
conflicts=('xcursor-starcraft-blue')
install=
source=("${_pkgbase}::git+${url}.git")
md5sums=("SKIP")

pkgver() {
  cd ${_pkgbase}
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

build() {
  cd "${srcdir}/${_pkgbase}"
  make
}

package() {

  install -d -m 755 "${pkgdir}/usr/share/icons/${_pkgbase}/cursors"

  install -m644 "${srcdir}/${_pkgbase}/cursors/*" \
    "${pkgdir}/usr/share/icons/${_pkgbase}/cursors/"

  install -m644 "${srcdir}${_pkgbase}/index.theme" \
    "${pkgdir}/usr/share/icons/${_pkgbase}"
}

# vim:set ts=2 sw=2 :et:
