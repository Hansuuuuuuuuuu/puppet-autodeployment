class autodeployment::packages {
	package { 'vim': ensure => 'installed' } ->
	package { 'curl': ensure => 'installed' } ->
	package { 'git':   ensure => 'installed' }
	
}