Docker, HAProxy, Nginx

To have it done:
- clone this repo to your local machine
- run `docker.sh` script

The script does everything:
- it builds & ups two Docker instances with HAProxy & Nginx
- HAProxy daemons will be configured as a round robin balancers for Nginx on a backends
- the script checks if both containers can response on 80 tcp (haproxy will transfer requests to nginx & return 200)
