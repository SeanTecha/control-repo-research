class profile::linux::baseline {
  package { 'unzip':
    ensure => installed,
  }

  # USERS
  if $::operatingsystem == 'CentOS' {
    user { 'puppetdemo':
      ensure     => present,
      managehome => true,
      groups     => ['wheel'],
      comment    => 'user for CentOS',
    }
    
    if $::operatingsystemmajrelease == '7' {
      package { 'tree':
        ensure => '1.6.0-10.el7',
      }
    }
    
    if $::operatingsystemmajrelease == '6' {
      package { 'tree':
        ensure => '1.5.3-3.el6',
      }
    }
  }
  elsif $::operatingsystem == 'Ubuntu' {
    user { 'puppetdemo':
      ensure     => present,
      managehome => true,
      groups     => ['sudo'],
      password   => 'user for Ubuntu',
    }
    
    package { 'tree':
      ensure => '1.6.0-1',
    }
  }
}
