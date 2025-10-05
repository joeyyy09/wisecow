#!/usr/bin/env bash

SRVPORT=4499

prerequisites() {
    command -v cowsay >/dev/null 2>&1 &&
    command -v fortune >/dev/null 2>&1 || 
    { 
        echo "Install prerequisites."
        exit 1
    }
}

handleRequest() {
    mod=$(fortune)
    response="HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n<pre>$(cowsay "$mod")</pre>"
    echo -e "$response"
}

main() {
    prerequisites
    echo "Wisdom served on port=$SRVPORT..."
    
    while true; do
        handleRequest | nc -l -p $SRVPORT -q 1
    done
}

main