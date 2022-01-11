FROM  ssurge/wordpress:5.6-fpm-apache2

RUN set -ex \
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget unzip qrencode nano curl net-tools\
    && apt autoremove -y
    
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh    
