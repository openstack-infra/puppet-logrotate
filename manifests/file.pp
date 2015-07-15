# == Define: logrotate::file
#
define logrotate::file (
  $log,
  $options,
  $ensure=present,
  $prerotate='undef',
  $postrotate='undef',
  $firstaction='undef',
  $lastaction='undef',
) {

  # $options should be an array containing 1 or more logrotate
  # directives (e.g. missingok, compress).
  validate_string($options[0])

  include logrotate
  # TODO: some puppet to bomb out if '/' is in $name

  file { "/etc/logrotate.d/${name}":
    ensure  => $ensure,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('logrotate/config.erb'),
    require => File['/etc/logrotate.d'],
  }

}
