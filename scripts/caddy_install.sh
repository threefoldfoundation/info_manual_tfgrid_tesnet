set -e
cd /tmp

echo "INSTALL CRYSTAL TOOLS & TFWEB"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/threefoldfoundation/websites/master/tools/install.sh)"

if ! [ -x "$(command -v curl)" ]; then
    apt update
    apt install curl -y
fi

FILE=/tmp/caddy

#check right version if not remove
caddy version | grep -q "^v2."
if [ ! $? == 0 ]; then
    rm -f "$FILE"
fi

if [ ! -f "$FILE" ]; then
    echo "$FILE does not exist yet will download."
    curl --output /tmp/caddy 'https://caddyserver.com/api/download?os=linux&arch=amd64' ; echo "DONE"
    chmod 770 /tmp/caddy
    cp /tmp/caddy /usr/local/bin/caddy
fi

if ! [ -x "$(command -v caddy)" ]; then
    echo "CADDY WAS NOT INSTALLED"
    exit 1
fi

set +e
caddy version | grep -q "^v2."
if [ $? == 0 ]; then
        echo "CADDY INSTALLED PROPERLY"
else
        echo "CADDY WAS NOT PROPERLY INSTALLED"
        exit 1
fi

