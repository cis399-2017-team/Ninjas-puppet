class fail2ban {
    
    package { "fail2ban":
        ensure => latest
    }

    service { "fail2ban":
    	subscribe => File[fail2banconf],
        require => Package["fail2ban"],
        ensure => "running",
	enable => true
    }

    file { "fail2banconf":
        name => "/etc/fail2ban/fail2ban.conf"
	owner => root,
	group => root,
	mode => 644,
	source => "puppet:///modules/fail2ban/fail2banconf",
	require => Package["fail2ban"]
    }
}
