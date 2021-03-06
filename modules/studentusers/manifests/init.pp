class studentusers {
    
    #Group for Student access; unsure how to limit access control
    group { "students":
	    ensure => present,
	    gid => 3399,
    }
    #Profiles for Ninjas

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

    #Profiles for alphabet[11:14]

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

    user { "mister_person":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "mister_person_key":
	    name => "mister_person",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAACAQC2H7AV3pr9nCZfYDHp5Ji1RLQozWYCC9PfodqvEBLY4S+RHsVWMuyenSEdf0mMuYT6QISk2hG5aTZD1psMPK8glFIt0UQ1m8ZPWaUzUogM95WWazwnzfiLcPLAPYRnMBMLO0yFFPlVFSWEOLQ7jMoM/eXOpPzZdZ8iDKa/Fe3tJqnJaNDncxzqvvRjyMWt5+OUidah+DkKWwzymQ+XH/ypIXY5+6bzcBfkb4Z1/ijRbcu7pGu01fWLRWCvy/bJDqBFgSEIGTSngVd/B0oXOGqvdwScgldVoIKExwzSQ7JDITmOTkej/VpwUC3lKM21a+HG85AB5YoPqFr/6ih1FORfQbmjoWdT4VAJoFH6WfngoqcOfci3qa+BNDecRiOuQbNu65ptPfOhJh7aiuDdL+tmY+C00gtbVDhLTYTM5jepembpFcv/7f2O9VtWJpPXZ4u1WkaffmqH3ZqV+/ET7wxDZeGgr6RvoG88UxdWUvr/wHgJvngEz4Y1DHitwCzCXIko0kH73eaIt8kaJUEdOl6FceoBZBK9i2mNktnd5sWtsxAXO/1GOR7a0Mw+XCUI9r8sN6B5fX9wbnBNj2kClEJLInvIVxeQqIw2NH2FzYgxKySCH4h04yoZR0fUSgPHxEdUQPM6X/lZDYX1bVd+NNsu9YQuRH4JLEclE5vTLIXLxw",
	    user => "mister_person",
    }

    user { "mhebeler":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "mhebeler_key":
	    name => "mhebeler",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDDH3nBikuyiSC0+UitI7n/wFinh1M8bOAiDFUUUM3o6T3wcOXkH7yRU9WWePrRH2BUjsd0KKW3O39m5Gdq0TouncEyk2gfWY8J9mkYDpdJ8FxWYEvIQhhjFHWCpk/5EH9Cqic3NMwRyt5CeddnzdutFnTg2dmsEuKqAc1pMGm6LVPMWtazuIuRexGWAV/tL6nSqhs9+nYNQsoyQuK25gBOLQEF8+tnACPClmUzBfjSAFREbhe0WveTeUUXKA6SXXTJambB6cvYTWDQ6hEaxzs94hDUehJB/V8o0S45gB/t/9IfKXmjt5dMLM4TKB8GZRicnsAufGrrtuW/moCvzkp9",
	    user => "mhebeler",
    }

    #Profiles for Hideous Snakes

    user { "nboyd":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "nboyd_key":
	    name => "nboyd",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCUAISsul1Ad4yd8EM3OBSvPh+8vvjkJ0awW8FWX0BfMgKBb/XQ6pyzCA2i5fqw5wC//0F0JCFhh7pin67077Jyq8PdL1c3WbUrJcRMoATtxQi51BfkxnaME0wngKxaiBdzL0Ge2hlmxQhQbiSBQMJvLU2/MjGgi+pGnja2GLzUprqICgBz2cIIDlIryESMr3p9JpfqgjHG6hZZG5hPOrPXenxnmBqSje1ld/9mvc5KCwclbFjtqkKpSFGiCjDgAoAjvuWXtx3sJw0VbborB5QZmyl261E4KDHBDoQpfznP9rx7R49YlM8BHrCAaDyJ3mlV1b50odh1AwxLZgUcTlAB",
	    user => "nboyd",
    }

    user { "coletc":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "coletc_key":
	    name => "coletc",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCEmvb0cSCkdIoTggm4y1AtGMLQGupt35HLCwL8ZF147cvRJ72EtU9kdyx4Ol74OqvwizwAVjqCWHDtttrNb1xnmlHAbsG3lpPGday4VXgjfcHAmzmaofKz1BiV/g4f370th92VP82+eBUiDpiF9U/WRVZR5xYvPH02ixY+4T0Tf5wCmG6JTsS6P4SSzEWNU4dkfq9kHTlC7L5BK/2XmdcqpduEz+Fp+5FB5OmHmWnsD1ZPHIN1ExASbHymamUKHTWCCePPgj3J6G0vPFJ4gtfrkDk6OfhX6z9X0jcMvKc4SmtJzIrdRfUpIeIzp9eV8+OB/M2qAo3inYr+pNRFNq1d",
	    user => "coletc",
    }

    user { "kaelas":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "kaelas_key":
	    name => "kaelas",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCLSFcuq/BzCKmFRJ6/aM8ywlUrth1+fSF4R7S7kwevTWN9fjPFULdLGdeWHoNK8gtnoPv8a9mlmW45g4FDGAipR9/yfqPqjKDr3HP62dmwutyiZp7I7iwrsydYjThV29F6TT6R4Mnbm/nmKys75C63EpxguEjWuGhRxe2AzZJMBN5Nvf6I0fA7UdDiAoRArMznyho9Y+Arog1oQO9WdETjil/3vnDRP6S79AvVIochJCdmQWOI9qixPAA1ozxhIgRujjk+iQtj25cbPoCPGSpFYMGvK5vrqWik+rLrkregcbryNuZjr3FeJwd1K/82OqjdwstwE7otvh9YiHUgDO6T",
	    user => "kaelas",
    }

    #Profiles for Hot Shame

    user { "jdolan":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "jdolan_key":
	    name => "jdolan",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCzQ9y1oCy32mSQNuxr6ti9aE02mf1TV4DnWAMkHrBhrgzwF6ycLrqkTqUA0gOaWX9AlvgotVNMVgpHicM0QM5BCD1eLai1MKBewhqTzw9hnpaf9OugdWCSQtC7Jc9M0sYFCp6kdLCRHyvUvnb74jQXFA4EiXO1bLfnIbTCcHNvQDdymyEnfHD/Q5JeNm+DqaN4ZqcMqzlnWM27+/m312nn1KEIWpRANWJBJSBIFvXWS4YmrbFZN7WkRYy1GJisGRhk4PaHFQOZJJ26Im8URBhKhPlQwJljIU8kuboQ/2ASrboBPSYOV3Cmoh1PETjeu2OXag1shUlUaSatqBb/t+uF",
	    user => "jdolan",
    }

    user { "houllette":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "houllette_key":
	    name => "houllette",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCVs/6140OKWU4CBCR8H/eDSxeAOhlyQzuv6X4xv4PxW0425s5Rz/pXKPv5OfZdA0WTBEBCHkrxC2Kn2n7IId25kqhckI5T6W0F3LLcmFXkE5kxzbGICgeXRHAewozv8TrK3pbMIJCbnTEnkqXkf72FFuog36GbbHuKE60qCYrF5h4oQ6gfXvBfhjxusfb4hdi3H84dQrG4IK9yyr5o2U1b5cV4kP/jt9wjiZapWSxcvbvsgftRdTrRx5Bru0Jfn+bKcPH9UKFplDQTC0HbCzPQ5242J9vt/wBubPPdevw1SukvdOAIE8tXSZhmJodNkmBLOZy+NXjK7cXxFcdGeCwd",
	    user => "houllette",
    }

    #Profiles for Segmentation Squad

    user { "slynch":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "slynch_key":
	    name => "slynch",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCsfkdPqW0Vm6T5PcQYaBid7eXpd3wK54x9Qq50tDYenN1CfyTIM6mEJYYxtIpKwV5oqMiJLJ4PyfpuWCpl1DjIvFhnFtpv8p50yc3ZNNQvNbGhpSMp2G6RmTnmsSmTLk3FEThd4OIfhWCCawd3WaJbSQqyjg5ymr/VYj+rYauC0nT19VHrgqw2lr/HVItXTt0N6JTu01WLTvs75n988OLLkSeJL7pycFfo8ve+pK8phANsUNos42dug+8zQwHo4tqsWNh+o1tMCrOcoQjgOSIXyS9EuAkg8sE37cAoYZ3RT3zZoz+c1qtRg6Bjp/u7Hac+ac28cYzQt2/ja0oQRdil",
	    user => "slynch",
    }

    user { "jeremy003":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "jeremy003":
	    name => "jeremy003",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCjfk9PZxnJkmtLqICp/Lj7GrAiqnxAsTKcUV7ATJFY9DwjIJdpXUsD+Yzqc/C32tCdXvmU54qmORYzYb9tmzHVfWEQeTg3mQzBwDmOiwU9MksaQwoGZNMuX9tkFagtAKIsCbDs7te6NJB7k5RwsZwXF70RtxXOgOGx76fizZ+HI/b4Ft0YYb9sDwvBbww7dj5lJQWOMjxl077BUNTMAeEFMKggRBFyjTHGOp8yKhdcEwbZvtIx3Gt46mA3YmVkJHdXiClpdaz/gAACPRlXRiKm9Q494e1yJZUZ8FleQDh2VX9ODiniT7usv1lmaxBH/Ugc7Y99jSWF4Mkoi2NTWbqz",
	    user => "jeremy003",
    }


    user { "mitchm":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "mitchm":
	    name => "mitchm",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQConOmMmuISa5E1L6rXpkEXibk7eNYwCBiNbHgHphIjDDk9cQx8HS43+r2oWyt5TJ8Zf872QTY6q0Jt69daMN5Z5W0WR2UDngcdHwxCbJv0a9QH/vraVhchHRXtt+ci4ja8T1snno9v7mjw8tzl3x3weKr3WAs1rbmdXAAec0+NsH/44h4aJX3W1QGXWRJ9eoiP/MTSk72+H1vb3IIm+WVioqKJkhuzmz+cHmJiKyluN4WueJpLhBiLYcZocn64Zzn43GvaGxhOEiFfJ87kLolwMBWzaYCaL+gLZRKFsa6v40l4TVfWOYhgnLotDe70P4/7JJABsaPrMyfLIOp6d905",
	    user => "mitchm",
    }





    #Profile for professor

    user { "stevev":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "stevev_key":
	    name => "stevev",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAACAQDN0n7TZj/XUCs4ywvPLHfAFTHHkzFbxTW5GuHXMWIyrb7M84ySFSswd2n45Kh2IQey7sd97V0dj/EENKvy+5FCyyTTLWmnTXzTLMeb5qpV6Xful5vt6KjHd41ZAT2pKoK+yAjcTDRdMFq0QYDUEFug8ETv1/wPsJPgCLAlp0kJWJq8Q7AqmdCs+NilLvKKZUu62AMWNdNwDDBHCKgtn8TzgsEIxOgFgrrAXz+UdW5z4DLcmGx7wkdAAM0Q18ohC6L0WayiceGHuC/vHfHNklHOWoBF5L8YWRdGKEN40LMiu//31uuXrmV3ZrudbyhsRcWXr5dukbqD43PpsBzIOo3080FyZJWeLOpbE/6VsrNNlOtroKnuO+mIWOVsBQCH5R3UPwwxTtf8yyO7GvNm2HjRBgGLGXql3RhqIpTEVUfzXqadX+b/v8ChuBjYtegr2CWhs85qGj/2gNanZjfE8NJVa8OymuiQi5boRGsoDKXY1F7hnaZNL4CYyW1yAp44evDyohp/E9+YY3I/RdUfZ/apelHIVNXL4bx25oPUT7/jqqJi3RcyDQugZLH55QWiE1NkFqJqwTif6b6hcsdhIlVuNhzuXKneTm74PCQ13Ui1nY9mx00wjnG6bXiHLy1mKXshl7i8LX9aK7hAzTeSWPnKJpJ2+UeLrywEp3FKsRbt1Q==",
	    user => "stevev",
    }

    #Profiles for The Fighting Mongooses

    user { "jsheabia":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "jsheabia_key":
	    name => "jsheabia",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCwP0EXIM1EtCI+OyhgAZ8greAxbdz633f6m/OEsymAtJefkEjw1A5vrMmkyfeoSAELuRbYHxX3N2gPU606IewVZt9KDkL34HMwQDJU6P4fGX5u0WrhmVhqsY2e4UejPtjOtAXGvOjRzkFHuYMLSAL6BbTTTo96Najh9inMxYjb2rP+9E/IRCj9trkEKspHKOTGlj+ADYXtFNb/4KfXuC+oexl2JAGIfSzM9sFBPA3z4d+kxa9AWf1iKWhEB2m5lefD/p8jcjRpXNBm281rIj4vkeWOKFh71gVZ9vR0p+VtYLs3f5tCU2G7zA6pjW8RricBeqG7egWS7DuSLw8datTH",
	    user => "jsheabia"
    }

    user { "dholstege":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "dholstege_key":
	    name => "dholstege",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCTPThmNila82dRmG8nJMBXVReNJT0lrk1saFKmmZ+UjR6t2TvQBErUmZUiA1/dwiIWKRLUF4miagKQMeZECvdPNarL748hlJvKAFibGEDFgTMD3gLnmV5O0dVOaR1yCK2et6RgPr0HaK1YoudllIO3dfcyD14YF7KgkQLUS29GqxzYa8UWfpZXdTAK3i4pGX2zE6FeLohEZT4HscOqa/QQsyrjvuIaWcQCp4YMiFhjMsMIYMsxk2Ge1cbDm+aRQcAIFSUdjeO3R4oMx4GS+WhewpCGVleBn8zSHuh4qBUcQDuMQ4TTJ7mrvNm2tGcHjtuZyKQbhBL1YW1EuS6VsEfZ",
	    user => "dholstege",
    }

    user { "jemin":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "jemin_key":
	    name => "jemin",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCgq+a6lGdgvfNl37gNfJFzth1aijWIo8goRvH/P2ElQxY1aKmIbYyJKGFkgyEo8cWM+kr4s8OOufputsv6FV4Di9GPECBeBoPN2va4nWakep6Fryanj5QAla7wV0AcVMgiSXYF03+HOLfLBECv3xl3sYleSC3bkkcwgXko8xxal/+qGD63DWWKc4A2WlOf0a8tb6paTPYEUOBBvT4lD5u0yU7wB5+0/HQTGZIqLNX6AeVPMl74zFIhNQbUyjNWMuo3JolOn7JffTzdGBV2nmszxjyAjRG6M2/xVlocpBVjDclhHBGqHqNQd2ZFwWKsY5eZxuk1im4047CUkcFX4vw7",
	    user => "jemin",
    }

    #Profiles for Fork Bomb

    user { "pogrebinsky":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "pogrebinsky_key":
	    name => "pogrebinsky",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQC+GfVig6yYm5Zc+5oQR5oCSpn6T2UgY/rEFmCbVPFILHlpmP3Ljm8J7IvDJyfJOZSbYWgt5LZGulpmZYayYFBo02vJC9daA8ax4LgqHmqrOQKl6J+NRwzUbEsQwrYznGwecOrX5d2IG5eV4lon1GAn2rOmZLQGgu6b1F39aYHZ6wRrN1ZAyXbXeX4Jb65Vfd8hbWNQ4/buJlVlJEW2aA0djUEdVNUQuFjZljH9bHk3yM9/Ak4sP9ezB5fNTciKuswvjXLfvl0W0Fds3wAwa+FFMDGfCdZNoigs42Yo533ld1X0fWjC9BvYRNw4k27bAZlX/9x1VcJwGMEQDtueE+aX",
	    user => "pogrebinsky",
    }

    user { "vino":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "vino_key":
	    name => "vino",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQC5muwuCYjAXyNqJey4F0hheb2KADcYtfLngn2qixILOdeKWNJB8+yGjYKHKc1/39qW55AtucV+77HEWzoYl1/V/0wswmE1RsnOyEce3gcH2naFNcnzKjqnCe0zcZCUBZIr3MsPvR1Y/BwNGCK+Vo7WYyqyOPNAmFj1dNiOEedTKJqzcFIO0awTY5MJC+G9q32YUbHv60vIeWtix1GnaIv9mbjIofYeBXlBr3mxH5dyZxunC+XyYlgCHToJpWlwef9KPQ9mPRsb3Hc98tx9pSpmI6+XHamaoXVuDAQUxEgkwTSth9w7q/S5Kv1rEL/3B8I7a1laT/dd3PPCNtM8s5y/",
	    user => "vino",
    }

    user { "cnf":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "cnf_key":
	    name => "cnf",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCROsSl7lF63moq10Z/JQ4MCEfFwxu/lH2LLTYHl6wolKRSEaJcFNx/Wszf76xTnyjIj9knbFu8OTQtu+zDYm9wwn2yXlULMLOoW76roQivq/zUknhtJYsbnDzCwYHiwdq9eGagn2vqtsZpoZG1vZrvt9SMiNHiyDkeM0yKNM+mi/qd+OWObqsNo0AW/W/5I7IIburbTB6riMBRgmqa5r0jXaQj7bGBImar3ohZRLWCpfH8pFnQpwVSAAAUfJEOCW5Y6dwWXqOh7lfVB1+T9CQsFyLIHyoo/vf+6Nu1D80CPI1IsjKMMuZEraqZrjhc6W9o/Y3+2GtLe0iePN2PA+wR",
	    user => "cnf",
    }

    #Profiles for Binary Boiz

    user { "cplachno":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "cplachno_key":
	    name => "cplachno",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCyS6Huzp2PgAPg5RGCLmQrKFQj/MiXOqLHle+Cs/3bEpm7w+Za2OU5hfV10J72U+HQ+9Z7GwYjO1+0iGgfeCTOQqS+JC74ojnmCmw4iMVMII6Bm71eFWYFG/8IB6F9VTUWFx3WW0rPzsdh0qSLaLlLqzHTaOgeEEVWQ2C7IFFKitlqKnfA8m4jg9g+820BBuUwZe9fFY0Nl+vb1sY0FqmxMH1atMNHpTnnS9/jR9fnhuixa/VaSTF7lo+igcUIUl+B5pD+juiim7k9PPJ55p4b9ukujdSNeGruovJUFMIHgp2sRS9OmihlbHOhO1YMlry8/2ex6Fn5Gm6el5Z/KyoH",
	    user => "cplachno",
    }

    user { "levishutts":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "levishutts_key":
	    name => "levishutts",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCQ3/5pTJx1/rMPLpSEQeXII66gdY8+xcXkAuBdlOwLHx7DzsyFNWTqSwN8Px1eNZwpQw2MQgLK2B+qrrDh8IOHa5fgL6eXvT8qnkxTILvPLGu1XBR76YidTC6a71R9xkdf0teIK99FxVu0GX13Hmh1rLPoK0egCsrcGjqbu9boTDhpajFwD44ekuc+lRv01lfJ6iDUA0Gl1xn4k7HmgFQ67Oh28G4hWVT9TpeakGX0eJ2nXMTbBOfHj8d0OFIaoKjQfhTMiRftvVoQUFnyUjj7xHyKmwJep31onZClxZJQYTpmL0QiPTpSI/J3mQ7NUrXAYXszrchMMge51mENhEQx",
	    user => "levishutts",
    }

    user { "aziz94shh":
	    ensure => present,
	    gid => 3399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    ssh_authorized_key { "aziz94shh":
	    name => "aziz94shh",
	    type => "ssh-rsa",
	    key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQC8lqY5aml/XobpKeMnjHVlmTlz2d3QxP6AVSrPCvOjzWz9T0UN/llnedRoU9CpX6hgash5danUijlkhtX6Aiaqj/vWG6JOxddZOr/+ln20B6GxKFi8yy59lSGwhqfLATSxKu4//DeAj+GIExw2x6LDY0qt1a0047B4elIhBE+cHN2QvayOxwb0lP4ub5yaNChC/LO2xFU2rgvnEfANqWeeqPtHuQVaSsDdwpkiYIk4rhmX4q2XVv+ZLgJyEYSNm7QRx/cotcmq37iWkKTmq/tlpYDiSLSitUqBdMwz73yQ8uhDR0uIfVrdkilIdF7edEsHIUoqtEU0QpzQHi1nh3NH",
	    user => "aziz94shh",
    }

    #Last-minute adds, didnt look up group cuz I'm lazy

}
