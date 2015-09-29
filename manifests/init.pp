# Class: hipchat
# ===========================
#
# Full description of class hipchat here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class hipchat (
  $package_name = $::hipchat::params::package_name,
) inherits ::hipchat::params {

  # validate parameters here

  class { '::hipchat::install': } ->
  class { '::hipchat::config': } ~>
  Class['::hipchat']
}
