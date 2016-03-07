FROM armv7/armhf-ubuntu:14.04


# Install dependencies
RUN apt-get update && apt-get install -y nginx

# Copy site configs
COPY nginx.conf /etc/nginx/nginx.conf
COPY sites-available/* /etc/nginx/sites-available/

EXPOSE 80

CMD ["nginx"]
