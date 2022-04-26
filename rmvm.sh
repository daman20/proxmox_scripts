echo '---Forceably killing vm---'
./killvm.sh $1
echo '---Removing VM---'
qm destroy $1
