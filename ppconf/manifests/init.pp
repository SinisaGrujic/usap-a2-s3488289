class ppconf{

	#set run interval
	exec { 'sudo /usr/local/bin/puppet agent --runinterval 1200':
		path => ['/usr/bin', '/usr/sbin','/usr/local/bin'],
	}

	#setting /usr/local/bin as a system path Q4e
	Exec { path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/','/usr/local/bin' ] 
	}

	#agent timestamp
	file { '/etc/profile.d/agent_login.sh' :
		ensure  => present,
		content => 'timeStamp=`/bin/date +"%d-%m-%Y_%H.%M.%S"`; echo "Agent started running at $timeStamp"',
	}

	#gives becca sudo privilege
	exec { 'becca_sudo' :
		command => '/usr/sbin/usermod -aG wheel becca',
	}

	exec { 'runlevel' :
		command => '/usr/bin/systemctl setdefault multiuser. target',
	}

	#ensures /usr/local/bin is in everyone's path on the system Q7
	Exec { path => '/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/puppetlabs/bin' 
	}

}
