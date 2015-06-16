# == Define: logrotate::file
#
define logrotate::fileremoval(
  $files = [],
) {

  file { $files:
    ensure => absent,
  }
}
