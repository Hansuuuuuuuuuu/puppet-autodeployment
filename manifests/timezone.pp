class autodeployment::timezone {
	exec { 'backup locatime':
		command      => 'mv /etc/localtime /etc/localtime.bak',
		path        => '/usr/bin:/usr/sbin:/bin:/usr/local/bin',
	} ->

	file { '/etc/localtime':
	  ensure => 'link',
	  target => '/usr/share/zoneinfo/Asia/Manila',
	}


}