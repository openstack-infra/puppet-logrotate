# == Define: logrotate::file
#
define logrotate::fileremoval(
  $files = [],
) {

  each($files) |$file| {
    file { "/etc/logrotate.d/$file":
      ensure => absent,
    }
  }
}
