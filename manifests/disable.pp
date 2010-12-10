class smartd::disable {
  case $operatingsystem {
    debian: { include smartd::disable::debian }
    default: { include smartd::disable::base }
  }
}
