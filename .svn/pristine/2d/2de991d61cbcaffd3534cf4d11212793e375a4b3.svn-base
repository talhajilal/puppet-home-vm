class etc_hosts {
host { 'localhost':
  ensure       => 'present',
  host_aliases => ['localhost.localdomain', 'localhost4', 'localhost4.localdomain4'],
  ip           => '127.0.0.1',
  target       => '/etc/hosts',
}
host { 'puppetserver':
  ensure       => 'present',
  host_aliases => ['puppetserver.home', 'puppetmaster.home', 'puppet-master', 'puppetserver.local'],
  ip           => '192.168.2.32',
  target       => '/etc/hosts',
}
host { 'web-01':
  ensure       => 'present',
  host_aliases => ['web-01.home', 'web-01.local'],
  ip           => '192.168.2.30',
  target       => '/etc/hosts',
}
host { 'web-02':
  ensure       => 'present',
  host_aliases => ['web-02.home', 'web-02.local'],
  ip           => '192.168.2.31',
  target       => '/etc/hosts',
}
host { 'web-03':
  ensure       => 'present',
  host_aliases => ['web-02.home', 'web-02.local'],
  ip           => '192.168.2.33',
  target       => '/etc/hosts',
}


package { 'openssh-server':
  ensure => '5.3p1-118.1.el6_8',
}
file { "test_file":
  ensure  => "file",
  path => "/tmp/test.file",
  ##mode => 755,
  source => "puppet:///files/test.file"
}
file { "sshd_config":
  ensure  => "file",
  group   => "0",
  mode    => "644",
  owner   => "root",
  #type    => "file",
  path    => "/etc/ssh/sshd_config",
  source  => "puppet:///files/sshd_config"
}

}
