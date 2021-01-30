[mumble-web](https://github.com/johni0702/mumble-web), a HTML5 mumble web client.
 
This image has [websockify](https://github.com/novnc/websockify) included, running under the same address as the web interface.
Rather than asking the user for the address of the mumble server, this image automatically uses its own instance of websockify.

    docker run -e MUMBLE_SERVER=mumble.rankenste.in:64738 -p 8080:8080 rankenstein/mumble-web

As `MUMBLE_SERVER`, specify the hostname and port of your mumble server. One way to run your own mumble server is to use
[mattikus/murmur](https://hub.docker.com/r/mattikus/murmur).

This will run mumble-web on port 8080. To use HTTPS, use a reverse proxy such as [nginx-proxy](https://hub.docker.com/r/jwilder/nginx-proxy/).