# manifests/disable.pp

class smartd::disable inherits smartd::base{
    package{'smartmontools':
        ensure => absent,
    }
}
