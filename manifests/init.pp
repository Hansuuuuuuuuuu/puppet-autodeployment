class autodeployment {

	@autodeployment::virtual { 'monitor':
	  uid             =>  1001,
	  realname        =>  'monitor',
	  pass            =>  '',
	}
	realize (Autodeployment::Virtual['monitor'])
	include autodeployment::packages
	include autodeployment::scripts
	include autodeployment::timezone
	include autodeployment::cron
	include autodeployment::sethost
}
