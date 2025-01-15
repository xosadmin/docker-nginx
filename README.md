# docker-nginx
An unofficial container image for Nginx web server

### Usage  
- Create a new container by DockerHub: ``docker run -d -p 80:80 -p 443:443 xosadmin/docker-nginx``

#### Note
- ``-v /path/to/custom-config:/etc/nginx/sites-enabled`` is available for custom ``server`` config and multi-sites
- This image only includes Nginx. If you wish to use PHP with Nginx, please use the image https://github.com/xosadmin/docker-php-nginx
