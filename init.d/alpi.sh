#!/sbin/openrc-run

description="alpine pi"

depend() {
	need net
	after firewall
	provide alpi
	use dns
}

start() {
	echo "alpi start()"
}

stop() {
	echo "alpi stop()"
}
