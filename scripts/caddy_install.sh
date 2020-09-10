set -ex
cd /tmp

if ! [ -x "$(command -v curl)" ]; then
    apt update
    apt install curl -y
fi

FILE=/tmp/caddy
if [ ! -f "$FILE" ]; then
    echo "$FILE does not exist yet will download."
    curl --output /tmp/caddy https://caddyserver.com/api/download?os=linux&arch=amd64
    chmod 770 caddy
fi


