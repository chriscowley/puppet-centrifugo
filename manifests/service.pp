# centrifugo::service
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include centrifugo::service
class centrifugo::service {
  service { $::centrifugo::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
