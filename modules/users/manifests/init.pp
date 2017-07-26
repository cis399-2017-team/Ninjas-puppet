class user {
    
    group { "Students":
        ensure => present,
        gid => 3399,
    }

    #default user specs:
    #ensure => present,
    #gid => 3399,
    #managehome => true,
    #shell => "/bin/bash",


    #ssh_authorized_key defaults:
    #
    #type => "ssh-rsa"
    #key => jghjgjgjrgkfjblkgh
    #user => "USERNAME"
    
}