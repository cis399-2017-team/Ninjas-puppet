node ip-10-0-1-169 {
     include gitpull
}

node ip-10-0-1-5 {
     include agentupdate
     include sshd
     include apache
}

node ip-10-0-1-164 {
     include agentupdate
     include sshd
     include apache
}
