alias strrev="python -c 'print raw_input()[::-1]'"
alias pt="ps faux"
alias remove-old-kernels="dpkg -l linux-{image,headers}-* | awk '/^ii/{print $2}' | egrep '[0-9]+\.[0-9]+\.[0-9]+' | grep -v $(uname -r | cut -d- -f-2) | xargs sudo apt-get -y purge"