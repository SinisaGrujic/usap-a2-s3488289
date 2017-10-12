class user {

	require groups

	user { 'becca' :
		ensure     => present,
		uid        => '10018289',
		home       => '/home/becca',
		managehome => true,
		password   => '!!',
		groups     => ['sysadmin', 'cars'],
		shell      => '/bin/bash',
	}

	user { 'fred' :
		ensure     => present,
		uid        => '10028289',
		home       => '/home/fred',
		managehome => true,
		password   => '!!',
		groups     => ['trucks', 'cars', 'wheel'],
		shell      => '/bin/csh',
	}

	user { 'wilma' :
		ensure         => present,
		uid            => '10038289',
		home           => '/home/wilma',
		managehome     => true, 
		password       => '!!',
		groups         => ['trucks', 'cars', 'ambulances'],
		shell          => '/bin/bash',
	}

        -> ssh_authorized_key { 'wilma_ssh' :
                ensure => present,
                user   => 'wilma',
                type   => 'ssh-rsa',
                key    => 'WilmansKey', #to be generated using ssh-keygen
        }
}

#creation of users
