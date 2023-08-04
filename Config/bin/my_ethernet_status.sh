#!/bin/sh

echo "%{F#2495e7} %{F#ffffff}$(/usr/sbin/ifconfig | grep "inet" | awk '{print $2}' | head -n1)%{u-}"
