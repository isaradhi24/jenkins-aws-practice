# Use an official Debian-based image
FROM ubuntu:latest

LABLE maintainer="isaradhi24@gmail.com"

# Install Apache
RUN apt-get update && apt-get -y install apache2

# Expose port 80 
EXPOSE 80

# Start Apache in the foreground
ENTRYPOINT ["/usr/sbin/apachectl"]

CMD ["-D", "FOREGROUND"]
