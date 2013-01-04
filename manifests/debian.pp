# on debian + enable tools
class smartd::debian inherits smartd::base {
  Service['smartd']{
    name      => 'smartmontools',
    pattern   => 'smartd',
    hasstatus => false,
  }
  file_line{'enable_smartmontools':
    path    => '/etc/default/smartmontools',
    line    => 'start_smartd=yes',
    require => Package['smartmontools'],
    notify  => Service['smartd'],
  }
}
