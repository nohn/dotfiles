alias strrev="python -c 'print raw_input()[::-1]'"
alias pt="ps faux"
alias remove-old-kernels="dpkg -l linux-{image,headers}-* | awk '/^ii/{print $2}' | egrep '[0-9]+\.[0-9]+\.[0-9]+' | grep -v $(uname -r | cut -d- -f-2) | xargs sudo apt-get -y purge"
alias vpn="sshuttle -r web01.fra.de.nohn.net 0/0 --exclude 138.68.127.1 --dns"
alias copy="xclip -i -selection clipboard"
alias paste="xclip -o -selection clipboard"
alias notouch="xinput | grep 'ELAN Touchscreen' | grep -Po 'id=\d+' | cut -d= -f2 | xargs xinput disable"
alias du2="du --max-depth 1 | sort -n "
alias xfind="find . -type f -print0 | xargs -0"
alias whatismyip="curl --silent https://api.myip.com | jq -r .ip"
alias gitlab="microsoft-edge https://$(git remote get-url origin | cut -d "@" -f 2 | sed 's@:@/@g')"
ssh-keyscan2() {
    local HOST HOSTNAME PORT KEYHOST

    for HOST in "$@"; do
        HOSTNAME=$(ssh -G "$HOST" | awk '/^hostname / {print $2}')
        PORT=$(ssh -G "$HOST" | awk '/^port / {print $2}')

        if [ "$PORT" = 22 ]; then
            KEYHOST="$HOSTNAME"
        else
            KEYHOST="[$HOSTNAME]:$PORT"
        fi

        if ssh-keygen -F "$KEYHOST" -f ~/.ssh/known_hosts >/dev/null; then
            echo "Skipping $KEYHOST (already known)"
            continue
        fi

        echo "Scanning $KEYHOST"
        ssh-keyscan -T 10 -p "$PORT" "$HOSTNAME" 2>/dev/null \
            >> ~/.ssh/known_hosts
    done
}
