class smartd::base {
  package{'smartmontools':
    ensure => present,
  }
  service{smartd:
    ensure => running,
    enable => true,
    hasstatus => true,
    require => Package['smartmontools'],
  }
}
