class apache {
    package { "apache2":
    	    ensure => latest
    }
    service { "apache2":
	    subscribe => File[indexhtml],
	    require => Package["apache2"],
	    ensure => "running",
	    enable => true
    }

    file {"indexhtml":
	    name => "/var/www/html/index",
	    owner => root,
	    group => root,
	    mode => 644,
	    source => "puppet:///modules/apache/index",
	    require => Package["apache2"]
    }

    file {"apacheconf":
	    name => "/etc/apache2/apache2",
	    owner => root,
	    group => root,
	    mode => 644,
	    source => "puppet:///modules/apache/apache2",
	    require => Package["apache2"]
    }
}
