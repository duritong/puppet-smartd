# manifests/disable.pp
class smartd::disable inherits smartd::base{
    Package['smartmontools']{
        ensure => absent,
    }
    Service['smartd']{
        ensure => stopped,
        enable => false,
        hasstatus => false,
        require => Package['smartmontools'],
    }
}
