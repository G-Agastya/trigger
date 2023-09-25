FROM nginx:latest
RUN apt-get update && apt-get install -y telnet vim tcpdump
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 325467
CMD ["nginx", "-g", "daemon off;"]
