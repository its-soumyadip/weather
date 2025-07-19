# Use lightweight nginx base image
FROM nginx:alpine

# Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website files into the nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
