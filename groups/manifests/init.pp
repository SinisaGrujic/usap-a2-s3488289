class groups {
  group{'sysadmin':
    ensure => present,
    gid    => '1000',
  }

  group{'cars':
    ensure => present,
    gid    => '1001',
  }

  group{'trucks':
    ensure => present,
    gid    => '1002',
  }

  group{'ambulances':
    ensure => present,
    gid    => '1003',
  }
}

#Creation of user groups
