USER=1$
OVPN_DATA="ovpn-data"

docker run -v $OVPN_DATA:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full $USER nopass

docker run -v $OVPN_DATA:/etc/openvpn --rm -it kylemanna/openvpn ovpn_otp_user $USER

docker run -v $OVPN_DATA:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient $USER > $USER.ovpn



google-authenticator --time-based --disallow-reuse --force --rate-limit=3 --rate-time=30 --window-size=3 \ -l "${1}@${OVPN_CN}" -s /etc/openvpn/otp/${1}.google_authenticator
