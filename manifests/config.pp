# centrifugo::config
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include centrifugo::config
class centrifugo::config {
  file { '/etc/centrifugo/config.json':
    ensure  => present,
    content => to_json_pretty($::centrifugo::config_hash),
    owner   => 'centrifugo',
    group   => 'centrifugo',
    mode    => '0644',
  }
}
