#!/bin/bash

if type yum >/dev/null 2>&1; then
    yum history new
    yum clean all
    truncate -c -s 0 /var/log/yum.log
    rm -f /var/lib/rpm/__db*
fi

dd bs=1M if=/dev/zero of=/var/tmp/zeros || :
rm -f /var/tmp/zeros
echo "(Don't worry -- that out-of-space error was expected.)"

sync
