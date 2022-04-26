echo '---Forceably killing vm---'
rm -f /run/lock/qemu-server/lock-$1.conf
qm unlock $1
qm stop $1
echo '---Removing VM---'
qm destroy $1
