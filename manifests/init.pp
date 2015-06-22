# == Class: logrotate
#
# Adapted from http://projects.puppetlabs.com/projects/1/wiki/Logrotate_Patterns
#
class logrotate {
  package { 'logrotate':
    ensure => present,
  }

  file { '/etc/logrotate.d':
    ensure  => directory,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    recurse => true,
    force   => true,
    purge   => true,
    require => Package['logrotate'],
  }
}
