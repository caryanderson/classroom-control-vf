class skeleton {
    File {
      ensure => file,
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
    }
    file { 'skel':
      ensure => directory,
      path   => '/etc/skel',
      mode   => '0755',
    }
    file { 'bashrc':
      path   => '/etc/skel/.bashrc',
      source => 'puppet:///modules/skeleton/bashrc',
   }
}
