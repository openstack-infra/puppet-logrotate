# == Define: logrotate::file
#
define logrotate::file (
  $log,
  $options,
  $ensure       = present,
  $firstaction  = 'undef',
  $lastaction   = 'undef',
  $postrotate   = 'undef',
  $prerotate    = 'undef',
) {

  # $options should be an array containing 1 or more logrotate
  # directives (e.g. missingok, compress).
  validate_string($options[0])

  include ::logrotate
  # This allows us to handle fully pathed files
  $escaped_path = regsubst($name, '/', '_', 'G')

  file { "/etc/logrotate.d/${escaped_path}":
    ensure  => $ensure,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('logrotate/config.erb'),
    require => File['/etc/logrotate.d'],
  }

}
