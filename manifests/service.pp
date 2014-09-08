class saslauthd::service inherits saslauthd {

  service { "saslauthd":
    enable     => "${service_enable}",
    ensure     => "${service_ensure}",
    subscribe  => [File["/etc/${allowed_group}.group.allowed"],File["/etc/default/saslauthd"]],
  }

}
