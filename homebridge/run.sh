
CONFIG_PATH=/data/options.json
HOMEBRIDGE_BASE_CONFIG_PATH=/etc/homebridge-base-config.json

if [ -f /var/run/dbus.pid ]; then
	rm /var/run/dbus.pid # in case shutdown abruptly
fi

if [ ! -d /config/homebridge ]; then
	echo "Creating the homebridge config directory"
	mkdir -p /config/homebridge
	cp $HOMEBRIDGE_BASE_CONFIG_PATH /config/homebridge/config.json
fi

if [ ! -d ~/.homebridge ]; then
	echo "Linking the homebridge config directory"
	ln -s /config/homebridge ~/.homebridge
fi

sed -i "s/rlimit-nproc=3/#rlimit-nproc=3/" /etc/avahi/avahi-daemon.conf

jq --raw-output ".plugins[]" $CONFIG_PATH | while read p; do echo "Ensuring $p is installed…"; npm install -g --unsafe-perm $p; done

echo "Launching DBUS daemon…"
dbus-daemon --system

echo "Launching avahi daemon…"
avahi-daemon -D

echo "Launching homebridge…"
homebridge
