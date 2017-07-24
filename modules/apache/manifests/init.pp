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
	    name => "/var/www/html/index.html",
	    owner => root,
	    group => root,
	    mode => 644,
	    source => "puppet:///modules/apache/index.html",
	    require => Package["apache2"]
    }

    file {"apacheconf":
	    name => "/etc/apache2/apache2.conf",
	    owner => root,
	    group => root,
	    mode => 644,
	    source => "puppet:///modules/apache/apache2.conf",
	    require => Package["apache2"]
    }
}
