class saslauthd::service inherits saslauthd {

  service { "saslauthd":
    enable     => "${service_enable}",
    ensure     => "${service_ensure}",
    subscribe  => [File["/etc/smtp.group.allowed"],File["/etc/default/saslauthd"]],
  }

}
