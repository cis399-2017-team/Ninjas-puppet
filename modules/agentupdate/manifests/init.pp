class agentupdate {

    cron { "pull agent config":

        command => "puppet agent -t",

	user => root,

	minute => "*/5",

    }

}
