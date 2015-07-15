# OpenStack Logrotate Module

This module installs and configures Logrotate

Rotate logfiles using the logrotate::file defined type:


include logrotate
logrotate::file { 'manage-projects':
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
