[![Actions Status - Master](https://github.com/juju4/ansible-floss/workflows/AnsibleCI/badge.svg)](https://github.com/juju4/ansible-floss/actions?query=branch%3Amaster)
[![Actions Status - Devel](https://github.com/juju4/ansible-floss/workflows/AnsibleCI/badge.svg?branch=devel)](https://github.com/juju4/ansible-floss/actions?query=branch%3Adevel)

# FireEye Labs Obfuscated String Solver (FLOSS) ansible role

Ansible role to setup FLOSS or FireEye Labs Obfuscated String Solver to automatically extract obfuscated strings from malware
https://github.com/fireeye/flare-floss

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.2
 * 2.3

### Operating systems

Ubuntu 14.04, 16.04 and Centos7

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.floss
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).
Default kitchen config (.kitchen.yml) is lxd-based, while (.kitchen.vagrant.yml) is vagrant/virtualbox based.

Once you ensured all necessary roles are present, You can test with:
```
$ gem install kitchen-ansible kitchen-lxd_cli kitchen-sync kitchen-vagrant
$ cd /path/to/roles/juju4.floss
$ kitchen verify
$ kitchen login
$ KITCHEN_YAML=".kitchen.vagrant.yml" kitchen verify
```
or
```
$ cd /path/to/roles/juju4.floss/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues

* [Python3 support #305](https://github.com/fireeye/flare-floss/issues/305), [Vivisect - Python 3 port #163](https://github.com/vivisect/vivisect/pull/163)
* [TypeError: an integer is required (got type bytes) when compiling any script #4265](https://github.com/pyinstaller/pyinstaller/issues/4265)

## License

BSD 2-clause
