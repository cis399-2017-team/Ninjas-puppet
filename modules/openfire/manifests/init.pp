class openfire {
    package { "openfire":
        ensure => latest,
    }
    service { "openfire":
        subscribe => File[openfirexml],
	subscribe => File[securityxml],
	subscribe => File[log4jxml],
	require => Package["openfire"],
	ensure => "running",
	enable => true,
    }
    file { "openfirexml":
        name => "/etc/openfire/openfire.xml",
	owner => root,
	group => root,
	mode => 644,
	source => "puppet:///modules/openfire/openfire.xml",
	require => Package["openfire"],
    }
    file { "securityxml":
        
