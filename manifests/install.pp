# == Class hipchat::install
#
# This class is called from hipchat for install.
#
class hipchat::install {

file { '/etc/apt/sources.list.d/atlassian-hipchat.list':
  ensure => present,
  source => 'puppet:///modules/hipchat/atlassian-hipchat.list',
}

file {'/tmp/hipchat-linux.key':
  ensure  => present,
  source  => 'puppet:///modules/hipchat/hipchat-linux.key',
  require => File['/etc/apt/sources.list.d/atlassian-hipchat.list'],
}

exec {'add_key':
  command =>'/usr/bin/apt-key add /tmp/hipchat-linux.key',
  require => File['/tmp/hipchat-linux.key'],
}
exec { 'apt-get_update':
    command => '/usr/bin/apt-get update',
    require => Exec['add_key'],
  }

  package { $::hipchat::package_name:
    ensure  => latest,
    require => Exec['apt-get_update'],
  }
}
