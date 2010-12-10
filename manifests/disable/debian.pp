class smartd::disable::debian inherits smartd::debian {
  Line['enable_smartmontools']{
    ensure => absent,
  }
}
