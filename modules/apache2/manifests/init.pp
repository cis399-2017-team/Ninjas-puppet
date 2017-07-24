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
	    source => "puppet:///modules/apache2/index",
	    require => Package["apache2"]
    }
}
