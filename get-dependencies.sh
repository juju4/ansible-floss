#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

if [ $# != 0 ]; then
rolesdir=$1
else
rolesdir=$(dirname $0)/..
fi

[ ! -d $rolesdir/juju4.redhat-epel ] && git clone https://github.com/juju4/ansible-redhat-epel $rolesdir/juju4.redhat-epel
[ ! -d $rolesdir/juju4.vivisect ] && git clone https://github.com/juju4/ansible-vivisect $rolesdir/juju4.vivisect
## galaxy naming: kitchen fails to transfer symlink folder
#[ ! -e $rolesdir/juju4.floss ] && ln -s ansible-floss $rolesdir/juju4.floss
[ ! -e $rolesdir/juju4.floss ] && cp -R $rolesdir/ansible-floss $rolesdir/juju4.floss

## don't stop build on this script return code
true

