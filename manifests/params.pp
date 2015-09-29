# == Class hipchat::params
#
# This class is meant to be called from hipchat.
# It sets variables according to platform.
#
class hipchat::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'hipchat'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
