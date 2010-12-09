class smartd::debian inherits smartd::base {
  Service['smartd']{
    name => 'smartmontools',
  }
}
