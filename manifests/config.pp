class saslauthd::config inherits saslauthd {

  group { "smtp":
    ensure => present,
  }

  file { "/etc/smtp.group.allowed":
    ensure  => present,
    content => "${allowed_group}",
  }

  file { "/etc/default/saslauthd":
    ensure => present,
  }

  file { "/etc/pam.d/smtp":
    ensure => present,
    source => "puppet:///modules/saslauthd/smtp",
  }

  file_line { 'start':
    path  => '/etc/default/saslauthd',
    line  => 'START=yes',
    match => 'START=',
  }

}
