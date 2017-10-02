# centrifugo::install
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include centrifugo::install
class centrifugo::install {
  if $::centrifugo::manage_repo {
    include ::packagecloud
    packagecloud::repo {'FZambia/centrifugo':
      type   => 'deb',
      before => Package[$::centrifugo::package_name]
    }
  }
  package { $::centrifugo::package_name:
    ensure => present,
  }
}
