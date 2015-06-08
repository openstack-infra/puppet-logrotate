# OpenStack Logrotate Module

This module installs and configures Logrotate

This module uses purgin on /etc/logrotate.d. That means any files not managed by puppet will be removed from that directory. Place files in that directory using the logrotate::file defined type:


include logrotate
logrotate::file { 'manage_projects.log':
  log     => '/var/log/manage_projects.log',
  options => [
    'compress',
    'missingok',
    'rotate 30',
    'daily',
    'notifempty',
    'copytruncate',
  ],
}

