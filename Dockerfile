# Use the lightweight Alpine version of Nginx as the base image
FROM nginx:alpine

# Copy all files from the current directory to Nginx's default HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]   
