class smartd::disable::debian inherits smartd::debian {
  include smartd::disable::base
  File_line['enable_smartmontools']{
    ensure => absent,
  }
}
