# wsl proxy
function wslproxy() {
	host_ip=$(cat /etc/resolv.conf | grep "nameserver" | cut -f 2 -d " ")

	export ALL_PROXY="http://$host_ip:7890"
	export HTTP_PROXY="http://$host_ip:7890"
	export HTTPS_PROXY="http://$host_ip:7890"
}

# start linux brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
