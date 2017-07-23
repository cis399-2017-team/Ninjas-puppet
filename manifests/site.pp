node ip-10-0-1-200{
#update /etc/puppet on puppet master 
   cron { "puppet update":
      command => "cd /etc/puppet && git  pull -q origin master",
      user => root,
      minute => "*/5",
   }

   #iptables disable 
   service { "iptables":
      ensure => "stopped"
      enable => "false" 
   }

   cron {"disable iptables and ufw"
      command => "ufw disable",
      user => root,
      minute => "*/5",
      }
}

node ip-10-0-1-5{
}

node ip-10-0-1-164 {
}

include sshd
