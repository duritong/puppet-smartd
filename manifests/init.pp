#
# smartd module
#
# Copyright 2008, Puzzle ITC
# Marcel Härry haerry+puppet(at)puzzle.ch
# Simon Josi josi+puppet(at)puzzle.ch
#
# This program is free software; you can redistribute 
# it and/or modify it under the terms of the GNU 
# General Public License version 3 as published by 
# the Free Software Foundation.
#

class smartd {
    include smartd::base
}

class smartd::base {
    package{'smartmontools':
        ensure => present,
    }
    service{smartd:
        ensure => running,
        enable => true,
        hasstatus => true,
        require => Package['smartmontools'],
    }
}
