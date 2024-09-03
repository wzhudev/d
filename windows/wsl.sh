#!/bin/sh

# This function is not useful when you set nameserver of Windows.
function wslproxy(){
    HOSTIP=$(cat /etc/resolv.conf | grep nameserver | awk '{ print $2 }')
    PROXY_HTTP="http://${HOSTIP}:7890"

    export http_proxy="${PROXY_HTTP}"
    export https_proxy="${PROXY_HTTP}"
    export all_proxy="${PROXY_HTTP}"
}
