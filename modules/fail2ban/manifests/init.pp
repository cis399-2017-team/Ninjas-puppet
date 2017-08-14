class fail2ban {

    
    package { "fail2ban":

        ensure => latest
,
    }


    service { "fail2ban":

    	subscribe => File[fail2banconf],

        require => Package["fail2ban"],

        ensure => "running",

	enable => true
,
    }


    file { "fail2banconf":

        name => "/etc/fail2ban/fail2ban.conf"
,
	owner => root,

	group => root,

	mode => 644,

	source => "puppet:///modules/fail2ban/fail2ban.conf",

	require => Package["fail2ban"]
,
    }

    file { "fail2banlocal":
        name => "/etc/fail2ban/fail2ban.local",
	owner => root,

	group => root,

	mode => 644,

	source => "puppet:///modules/fail2ban/fail2ban.local",

	require => Package["fail2ban"]
,
    }

    file { "jailconf":
        name => "/etc/fail2ban/jail.conf",
	owner => root,

	group => root,

	mode => 644,

	source => "puppet:///modules/fail2ban/jail.conf",

	require => Package["fail2ban"]
,
    }

    file { "jaillocal":
        name => "/etc/fail2ban/jail.local",
	owner => root,

	group => root,

	mode => 644,

	source => "puppet:///modules/fail2ban/jail.local",

	require => Package["fail2ban"]
,
    }
}
