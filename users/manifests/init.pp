class user {

	require groups
	require packages

	user { 'becca' :
		ensure     => present,
		uid        => '10018289',
		home       => '/home/becca',
		managehome => true,
		password   => '$1$N4nwXOJv$7ifY5Clw4jd2MJPvLh3R90',
		groups     => ['sysadmin', 'cars'],
		shell      => '/bin/bash',
	}

	user { 'fred' :
		ensure     => present,
		uid        => '10028289',
		home       => '/home/fred',
		managehome => true,
		password   => '$1$4AqfaV8H$KtpH/wd1SB9O1jHU8TDqN.',
		groups     => ['trucks', 'cars', 'wheel'],
		shell      => '/bin/csh',
	}

	user { 'wilma' :
		ensure         => present,
		uid            => '10038289',
		home           => '/home/wilma',
		managehome     => true, 
		password       => '$1$P68rTzzK$52sWGl1ZGqt0nLFA1qD740',
		groups         => ['trucks', 'cars', 'ambulances'],
		shell          => '/bin/bash',
                purge_ssh_keys => true,
	}

        -> ssh_authorized_key { 'wilma_ssh' :
                ensure => present,
                user   => 'wilma',
                type   => 'ssh-rsa',
                key    => 'WilmansKey', #to be generated using ssh-keygen
        }
}

#creation of users
