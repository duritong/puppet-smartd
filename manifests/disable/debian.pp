class smartd::disable::debian inherits smartd::debian {
  include smartd::disable::base
  Line['enable_smartmontools']{
    ensure => absent,
  }
}
