# manifests/disable.pp

class smartd::disable {
    package{'smartmontools':
        ensure => absent,
    }
}
