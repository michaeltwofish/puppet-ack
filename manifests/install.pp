class ack::install {
	package { $ack::params::package_name:
		ensure => present,
	}
	# symlink to ack
	# @todo Doesn't account for whether the ack kanji translation package is installed.
	if $ack::params::symlink_target {
		file { '/usr/bin/ack':
			ensure => 'link',
			target => $ack::params::symlink_target,
		}
	}
}
