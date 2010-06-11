# manifests/disable.pp

class smartd::disable inherits smartd{
    package{'smartmontools':
        ensure => absent,
    }
}
