class services {
	service { 'httpd' :
		enable => true,
	}

	file { '/etc/httpd/conf/httpd.conf' :
		ensure  => present,
		notify  => Service['httpd'],
		source  => '/etc/puppetlabs/code/environments/production/manifests/usap-a2-s3488289/conf_files/httpd.conf',
		require => Package['httpd'],
	}
}
