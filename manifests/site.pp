node ip-10-0-1-169 {
#update /etc/puppet on puppet master 
   cron { "puppet update":
      command => "cd /etc/puppet && git  pull -q origin master",
      user => root,
      minute => "*/5",
   }
}

node ip-10-0-1-5 {
     include sshd
     include apache

     user {"testuser1":
       ensure => "present"
       home => "/home/testuser1"
       coment => "My first test user with Puppet" 
       groups => "testgroup1"
       shell => "/bin/bash"
       uid => "501"
       ssh_key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDKc1y97UibIQujJ9Y25fFYvrpTSck73Cwfh+g7V3YaSvHUvK8Td5tSVH7ue4IFYVEFjy9njJ0h95P6c//Lm5mv0pZl0InOqH0VMN3y1ge6QGz9csTMvrHFsjR9sdQ/eIqTQcohcM/RKVjN3W1oIknogDGK52M2e3SzT+TZNxuaxe/lgg4E6UGD81ZxgKJaZtUEnufhMszRaDCUhq0qaZrhev7PJV1lej1ndfRnGnxgY2F66lISp0TUfxtOtCe7ZUoMtLwmoyB3bwGTpjgOYjTM2DnG1igHQ+nme4VquKMYFbSR7pL6JYtfo8Q1NANMilayDQqcPmZuvXHqO52BL0yh"
}

node ip-10-0-1-164 {
     include sshd
     include apache
}
