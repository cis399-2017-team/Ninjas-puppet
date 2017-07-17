class sshd {

    package { "openssh-server": 
    	    ensure => latest
    }

    service { "sshd":
    	    subscribe => File[sshdconfig],
	    require => Package["openssh-server"],
	    ensure => "running",
	    enable => true
    }

    file {"sshdconfig":
	    name => "/etc/ssh/sshd_config",
	    owner => root,
	    group => root,
	    mode => 644,
	    source => "puppet://modules//sshd/sshd_config",
	    require => Package["openssh-server"]
    }


ssh_authorized_key { "MeniNinja":
    ensure =>present,
    user => "ubuntu",
    type => "ssh-rsa",
    key  => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDKc1y97UibIQujJ9Y25fFYvrpTSck73Cwfh+g7V3YaSvHUvK8Td5tSVH7ue4IFYVEFjy9njJ0h95P6c//Lm5mv0pZl0InOqH0VMN3y1ge6QGz9csTMvrHFsjR9sdQ/eIqTQcohcM/RKVjN3W1oIknogDGK52M2e3SzT+TZNxuaxe/lgg4E6UGD81ZxgKJaZtUEnufhMszRaDCUhq0qaZrhev7PJV1lej1ndfRnGnxgY2F66lISp0TUfxtOtCe7ZUoMtLwmoyB3bwGTpjgOYjTM2DnG1igHQ+nme4VquKMYFbSR7pL6JYtfo8Q1NANMilayDQqcPmZuvXHqO52BL0yh",
    }

ssh_authorized_key { "SteveNinja":
    ensure =>present,
    user => "ubuntu",
    type => "ssh-rsa",
    key  => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCq19funxl1CEtaF7pkpaVmRkJF0oz2UeyLYABIgncltRvsZb1KYFS74oUNhjGYirmgFqyK8RBvWdCPskyLqfeVn2Ks8EZtDfTLOSARA+gacFJRrM9Q/FwRU5Jip7q7thUw1Im0vHqGXudsYT2UwWtdYdZC+K1Q+GHKQY2RaxYp9plTdxc6uGRJuq56DQ4Hg2P4u8+qKjCMu+lJqA7+7L2VkZmzfMeDntpz6ARKJ4FQ20XqIE1+Lg0Nc4HRdwxc58tXjGNpA6aUIUZPzTTF2A0H5QU9DGPTmhTlWSaa6vzzchfThS9Ejt16x3JlqeBj/7/hdsViQV94taREMiUOWkgB",
    }

}
