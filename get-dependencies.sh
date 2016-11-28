#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

if [ $# != 0 ]; then
rolesdir=$1
else
rolesdir=$(dirname $0)/..
fi

[ ! -d $rolesdir/juju4.vivisect ] && git clone https://github.com/juju4/ansible-vivisect $rolesdir/juju4.vivisect

