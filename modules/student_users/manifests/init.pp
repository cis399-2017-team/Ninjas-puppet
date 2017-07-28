class student_users {
    
    #Group for Student access; unsure how to limit access control
    group { "students":
	    ensure => present,
	    gid => 3399,
    }
    #Profiles for myself and Meni

    user { "stevep":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "stevep_key":
	    name => "Steven",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCVa0UoplSUtrseodyA3DLt18HFk9nKfDCAdNfi8BPcxDUfyyhwZrZVOKTQqqY+AWdST1eM1v9VwyCNuzpgjER7Qee7u28d4+fDWzO+XVf+OgpCNxOYuDgm1PWC5pmYcmMVoyfQZkNCZEIdlsG0RR5OQ1sBhugw/OED3u2Sih1gYBxyZBBdHf3liCaVR0aLFi9xB2pgcjnVNootReJXlYleBCl1cS0vBqwEz5HbEgd32vpVjMGoti7D+W3ohXEuJt9Csq6VSwzFj1o4VbncZL4/CJ02JDbOLqKuc7OsyrYDABFXgbJMOtUouX61NdE9QaDM9ZjEsX6XaYVjFZ3U/h1V",
            user => "stevep",
    }

    user { "menif":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "menif_key":
	    name => "Meni",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDKc1y97UibIQujJ9Y25fFYvrpTSck73Cwfh+g7V3YaSvHUvK8Td5tSVH7ue4IFYVEFjy9njJ0h95P6c//Lm5mv0pZl0InOqH0VMN3y1ge6QGz9csTMvrHFsjR9sdQ/eIqTQcohcM/RKVjN3W1oIknogDGK52M2e3SzT+TZNxuaxe/lgg4E6UGD81ZxgKJaZtUEnufhMszRaDCUhq0qaZrhev7PJV1lej1ndfRnGnxgY2F66lISp0TUfxtOtCe7ZUoMtLwmoyB3bwGTpjgOYjTM2DnG1igHQ+nme4VquKMYFbSR7pL6JYtfo8Q1NANMilayDQqcPmZuvXHqO52BL0yh",
	    user => "menif",
    }


    user { "nsato10":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "nsato_key":
	    name => "nsato10",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCH7Lspv4byYSdvKzSkh29q6lKco/f7WuiRVg06MeRiRqFDSknppvHoiAap1T3yVs8CH1wiWux9N1B2lEEqUMxFwxdR6vlgKkr8ACOLKVBBX3QPZSv5/jdaPENBqhIOQzQSv35vjNM6atPQ810fpKwoVtemFz4jfXP64GT91HK0oPbEMcTZOHJ2PBSx2l77K6/md/tF0JqK0voL6nz63X3npFuR3qdJ0kxLQghkdzAEryEsuTSn/KxBa2X/fyjfiGQY2h9sEG6fQLFdpTsj3zBmCxyksSUnxR3b+fkfjknJiHiuncu0CzchSbZXodah9zC/UGHo4L0LVAcMeBmvEQYF",
	    user => "nsato10",
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
