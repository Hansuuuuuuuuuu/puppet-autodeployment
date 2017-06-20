class autodeployment::sethost{
	exec { 'set_hostname':
		command      => '/bin/hostname bpx.server.local',
	}
}