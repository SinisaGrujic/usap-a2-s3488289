ass user {

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
}

#creation of users
