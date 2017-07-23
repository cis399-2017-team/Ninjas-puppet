node ip-10-0-1-169{
#update /etc/puppet on puppet master 
   cron { "puppet update":
      command => "cd /etc/puppet && git  pull -q origin master",
      user => root,
      minute => "*/5",
   }
}

node ip-10-0-1-5{
     include sshd
}

node ip-10-0-1-164 {
     include sshd
}


