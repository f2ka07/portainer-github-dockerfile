# Use an official lightweight Nginx image as the base image
FROM nginx:alpine

# Copy the website files to the container
COPY portainer-dockerfile-example /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]