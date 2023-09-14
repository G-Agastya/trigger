FROM nginx:latest
RUN apt-get update && apt-get install -y telnet vim tcpdump
COPY $NGINX_CONF_PATH /etc/nginx/nginx.conf
EXPOSE 32546
CMD ["nginx", "-g", "daemon off;"]
