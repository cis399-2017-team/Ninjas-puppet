class apache {
    package { "apache2":
    	    ensure => latest
    }
    service { "apache2":
	    subscribe => File["apacheconf", "indexhtml", "homehtml"],
	    require => Package["apache2"],
	    ensure => "running",
	    enable => true
    }

    file {"homehtml":
	    name => "/var/www/html/home.html",
	    owner => root,
	    group => root,
	    mode => 644,
	    source => "puppet:///modules/apache/home.html",
	    require => Package["apache2"]
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
