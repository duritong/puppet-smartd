class smartd::debian inherits smartd::base {
  Service['smartd']{
    name => 'smartmontools',
  }
  line{'enable_smartmontools':
    file => '/etc/default/smartmontools',
    line => 'start_smartd=yes',
    require => Package['smartmontools'],
    notify => Service['smartd'],
  }
}
