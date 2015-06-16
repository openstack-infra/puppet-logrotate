# == Define: logrotate::file
#
define puppet::logrotate::fileremoval::ensure_absent ($file = $title) {
  file { "/etc/logrotate.d/$file":
    ensure => absent,
  }
}

define logrotate::fileremoval(
  $files = [],
) {
  puppet::logrotate::fileremoval::ensure_absent { $files: }
}
