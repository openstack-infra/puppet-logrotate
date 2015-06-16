# == Define: logrotate::file
#
define logrotate::fileremoval(
) {

  $escaped_path = regsubst($name, '/', '_', 'G')

  file { "/etc/logrotate.d/${escaped_path}":
    ensure => absent,
  }
}
