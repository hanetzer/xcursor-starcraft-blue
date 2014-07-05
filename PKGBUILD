# Maintainer:  M. Plummer (The_NetZ) <ntzrmtthihu777 (at) gmail (dot) com>
# Contributor: Blizzard Entertainment

_pkgbase=xcursor-starcraft-blue
pkgname=${_pkgbase}-git
pkgver=r21.f14bc2c
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

  printf "r%s.%s" "$(git rev-list --count HEAD)" \
    "$(git rev-parse --short HEAD)"
}

build() {
  cd "${srcdir}/${_pkgbase}/src"
  make
}

package() {
  install -d -m 755 "${pkgdir}/usr/share/icons/${_pkgbase}/cursors"

  install -m644 "${srcdir}/${_pkgbase}/src/cursors/"* \
    "${pkgdir}/usr/share/icons/${_pkgbase}/cursors/"

  install -m644 "${srcdir}/${_pkgbase}/src/index.theme" \
    "${pkgdir}/usr/share/icons/${_pkgbase}"
}

# vim:set ts=2 sw=2 :et:
