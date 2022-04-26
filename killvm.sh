#!/bin/sh
echo '---Unlocking VM---'
qm unlock $1
echo '---Removing Lock file---'
rm -f /run/lock/qemu-server/lock-$1.conf
echo '---Unlocking VM (again)---'
qm unlock $1
echo '---Forceably Stopping VM---'
qm stop $1
