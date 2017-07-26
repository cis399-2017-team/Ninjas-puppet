class gitpull {
    cron { "puppet update":
        command => "cd /etc/puppet && git  pull -q origin master",
        user => root,
        minute => "*/5",
    }
}