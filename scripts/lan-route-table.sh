#! /bin/sh
#lan-route-table.sh

TEST_ARGS=$(ip route show 172.24.0.0/24 | wc -l)
if [ $TEST_ARGS -eq 0 ]; then
    ip route add 172.24.0.0/24 via 10.147.17.128
    logger -t "lan-route-table.sh" -c "zerotier LAN route added" -p user.notice
fi
