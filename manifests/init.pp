# centrifugo
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include centrifugo
class centrifugo (
  $manage_repo  = $::centrifugo::params::manage_repo,
  $package_name = $::centrifugo::params::package_name,
  $service_name = $::centrifugo::params::service_name,
  $config_hash  = $::centrifugo::params::config_hash,
) inherits ::centrifugo::params {
  class {'::centrifugo::install': }
  ->class {'::centrifugo::config': }
  ~>class {'::centrifugo::service': }
  ->Class['::centrifugo']
}
