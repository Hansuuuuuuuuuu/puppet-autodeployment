class autodeployment::cron {
	cron { 'my_memory_check':
		ensure  => 'present',
		command => "/home/monitor/src/my_memory_check -c 80 -w 60 -e hanstestemail@trashmail.ws",
		user    => "monitor",
		minute  => '10',
	}

}