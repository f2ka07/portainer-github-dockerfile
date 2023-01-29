# Use an official lightweight Nginx image as the base image
FROM nginx:alpine

# Copy the website files to the container
COPY myapp /usr/share/nginx/html
COPY myapp/css /usr/share/nginx/html/css
COPY myapp/fonts /usr/share/nginx/html/fonts
COPY myapp/images /usr/share/nginx/html/images
COPY myapp/js /usr/share/nginx/html/js

# Expose port 80 for web traffic
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]