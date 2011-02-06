class smartd::disable::debian {
  Line['enable_smartmontools']{
    ensure => absent,
  }
}
