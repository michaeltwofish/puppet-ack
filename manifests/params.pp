class ack::params {
  case $operatingsystem {
    /(Ubuntu|Debian)/: {
      $package_name = 'ack-grep'
      $symlink_target = '/usr/bin/ack-grep'
    }
    /(RedHat|CentOS|Fedora)/: {
      $package_name = 'ack'
    }
  }
}
