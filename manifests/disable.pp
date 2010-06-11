# manifests/disable.pp

class smartd::disable inherits smartd::base{
    Package['smartmontools']{
        ensure => absent,
    }
}
