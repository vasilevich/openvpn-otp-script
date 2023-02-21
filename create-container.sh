if [ -n "$1" ] && [[ $1 =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  IP="$1"
else
  IP=$(curl -s http://whatismyip.akamai.com/)
fi

OVPN_DATA="ovpn-data"
CIPHER="AES-256-CBC"


docker volume create --name $OVPN_DATA

docker run -v $OVPN_DATA:/etc/openvpn --rm kylemanna/openvpn ovpn_genconfig -u udp://$IP -2 -C $CIPHER

docker run -v $OVPN_DATA:/etc/openvpn --rm -it kylemanna/openvpn ovpn_initpki

docker run -v $OVPN_DATA:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn
