# Use official Nginx image
FROM nginx:latest

# Copy static HTML file to N ginx web root
COPY index.html /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]