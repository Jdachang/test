# Use a minimal base image
FROM alpine:latest

# Install Apache HTTP Server
RUN apk --no-cache add apache2

# Configure Apache to run in the foreground
RUN echo "ServerName localhost" >> /etc/apache2/httpd.conf

# Create a simple HTML file with "Hello"
RUN echo "<html><body><h1>Hello,world!</h1></body></html>" > /var/www/localhost/htdocs/index.html

# Expose port 80
EXPOSE 80

# Start Apache HTTP Server
CMD ["httpd", "-D", "FOREGROUND"]
