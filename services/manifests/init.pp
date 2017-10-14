class services {
	
	#httpd initial setup
	service { 'httpd' :
		enable => true,
	}

	#httpd.conf file replacement with setup httpd.conf file
	file { '/etc/httpd/conf/httpd.conf' :
		ensure  => present,
		notify  => Service['httpd'],
		source  => '/etc/puppetlabs/code/environments/production/manifests/usap-a2-s3488289/conf_files/httpd.conf',
		require => Package['httpd'],
	}

        service { 'sshd' :
                ensure  => running,
                enable  => true,
                require => Package['openssh-server'],
        }

	#sshd_conf file replacement with setup sshd_conf file
        file { '/etc/ssh/sshd_config':
                ensure  => present,
                notify  => Service['sshd'],
                source  => '/etc/puppetlabs/code/environments/production/manifests/configfiles/sshd_config',
                require => Package['openssh-server'],
        }

}
