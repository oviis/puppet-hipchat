
class hipchat {
	
 
  file_line { 'debian_package':
    path => '/etc/apt/sources.list',
    line => 'deb http://downloads.hipchat.com/linux/apt stable main'
  }

  exec { "wget -O - https://www.hipchat.com/keys/hipchat-linux.key | apt-key add -":
    path => ["/usr/bin", "/usr/sbin", "/bin"]
  }

  exec { "apt-get update":
    command => "/usr/bin/apt-get update",
    onlyif => "/bin/sh -c '[ ! -f /var/cache/apt/pkgcache.bin ] || /usr/bin/find /etc/apt/* -cnewer /var/cache/apt/pkgcache.bin | /bin/grep . > /dev/null'",
  }

  package { "hipchat":
      ensure => "latest",
      require  => Exec['apt-get update']
  }

}
