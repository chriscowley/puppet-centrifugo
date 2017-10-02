
# centrifugo

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with centrifugo](#setup)
    * [What centrifugo affects](#what-centrifugo-affects)
    * [Beginning with centrifugo](#beginning-with-centrifugo)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)
5. [Development - Guide for contributing to the module](#development)

## Description

Install [Centirfugo](https://github.com/centrifugal)

## Setup

### What centrifugo affects **OPTIONAL**

Adds the packagecloud repository (ensure you have the [environment](https://forge.puppet.com/computology/packagecloud) in your Puppet environment).

Installs the centrifugo package, which in turn adds:

- the `centrifugo` binary
- a `centrifugo` system user
- creates an init script
- JSON config file in `/etc/centrifugo`


### Beginning with centrifugo  

```
include ::centrifugo
```

## Usage

The file `config.json` is generated directly from the hash `centrifugo::config_hash`. With no options added, it will use a hard-coded secret and nothing else. Something a bit more advanced would be:

```nodename.yaml
centrifugo::config_hash:
  secret: secret
  namespaces:
  -
    name: public
    publish: true
    watch: true
    presence: true
    join_leave: true
    history_size: 10
    history_lifetime: 30
  log_level: debug
```

## Limitations

Tested on Debian Jessie and Stretch

## Development

Fork and send a PR
