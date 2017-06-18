class autodeployment::scripts {
	file { '/home/monitor/scripts':
	  ensure => 'directory',
	} ->

	exec { 'download memory_check':
	  command => 'curl -o /home/monitor/scripts/memory_check https://raw.githubusercontent.com/Hansuuuuuuuuuu/memory_check/master/memory_check.sh',
	  path        => '/usr/bin:/usr/sbin:/bin:/usr/local/bin:/opt/local/bin',
	  creates  => '/home/monitor/scripts/memory_check',
	} ->

	file { '/home/monitor/src':
	  ensure => 'directory',
	} ->

	file { '/home/monitor/src/my_memory_check':
	  ensure => 'link',
	  target => '/home/monitor/scripts/memory_check',
	}
}