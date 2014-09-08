class saslauthd::config inherits saslauthd {

  group { "${allowed_group}":
    ensure => present,
  }

  file { "/etc/${allowed_group}.group.allowed":
    ensure  => present,
    content => "${allowed_group}",
  }

  file { "/etc/default/saslauthd":
    ensure => present,
    source => "puppet:///modules/saslauthd/saslauthd",
  }

  file { "/etc/pam.d/imap":
    ensure => present,
    source => "puppet:///modules/saslauthd/imap",
  }

  file_line { 'start':
    path  => '/etc/default/saslauthd',
    line  => 'START=yes',
    match => 'START=',
  }

}
