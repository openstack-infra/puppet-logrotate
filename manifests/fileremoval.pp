# == Define: logrotate::fileremoval
#
define logrotate::fileremoval ($file = $title) {
  file { "/etc/logrotate.d/${file}":
    ensure => absent,
  }
}

