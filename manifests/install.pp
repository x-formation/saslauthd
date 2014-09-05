class saslauthd::install inherits saslauthd {

  package { 'sasl2-bin':
    ensure => installed,
  }

}

