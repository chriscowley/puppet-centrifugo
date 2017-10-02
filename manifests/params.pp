# centrifugo::params
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include centrifugo::params
class centrifugo::params {
  case $::osfamily {
    'Debian': {
      $manage_repo  = true
      $package_name = 'centrifugo'
      $service_name = 'centrifugo'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
  $config_hash = {
    'secret'   => 'secret'
  }

}
