pkg_name=mule-standalone
pkg_upstream_url=https://developer.mulesoft.com
pkg_origin=fastrobot
pkg_version=3.8.1
pkg_maintainer="Lamont Lucas <lamont@fastrobot.com>"
pkg_license=('CPAL')
# not used, since I actually git clone the repo and checkout the pkg_version branch
pkg_source="https://repository-master.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/${pkg_version}/mule-standalone-${pkg_version}.tar.gz"
pkg_shasum=30c2aa75b29d44916ae54084b6404e59cabc9febb3e9bc908dad13e63ace5e71
pkg_deps=(
  core/jre8
)
pkg_lib_dirs=(lib)
pkg_bin_dirs=(bin)

do_build() {
  return 0
}

do_install() {
  install -vDm644 README.textile "$pkg_prefix/README.textile"
  cp -a lib $pkg_prefix/
}