Apachecon North America 2019

For the CDN In A Box Workshop, clone these repositories...
- https://github.com/dangogh/Apachecon2019-cdn-in-a-box-workshop
- https://github.com/apache/trafficcontrol

and install `docker` and `docker-compose` using instructions from here:
https://docs.docker.com/compose/install/

Run `./install.sh <location of trafficcontrol repository>`

The `install.sh` script will do the following:
- pull docker images required for the workshop
- copy traffic control rpms to the correct location
- copy precompiled Perl modules to the proper location to shortcut `traffic_ops` Perl dependencies
