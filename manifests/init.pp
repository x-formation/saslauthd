class saslauthd ( 
  $service_enable     = $saslauthd::params::service_enable,
  $service_ensure     = $saslauthd::params::service_ensure,
  $allowed_group      = $saslauthd::params::allowed_group,
) inherits saslauthd::params {

  contain saslauthd::config
  contain saslauthd::install
  contain saslauthd::service

  Class['saslauthd::install'] ->
  Class['saslauthd::config']  ->
  Class['saslauthd::service']

}
