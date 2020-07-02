#!/bin/bash

source ~/perl5/perlbrew/etc/bashrc
perlbrew use 5.28.1
cd ~/App-CPANCoverBadge
PERL5LIB="$PERL5LIB:lib"
export PERL5LIB

if [ $1 = "start" ]; then
    hypnotoad bin/cpan_cover_badge -f
elif [ $1 = "restart" ]; then
    hypnotoad bin/cpan_cover_badge
elif [ $1 = "stop" ]; then
    hypnotoad -s bin/cpan_cover_badge
fi

