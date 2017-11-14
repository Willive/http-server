# Set nginx base image
FROM nginx
# Remove the default Nginx configuration file

RUN rm -v /etc/nginx/nginx.conf \
    && rm -v /etc/nginx/conf.d/default.conf

ADD nginx.conf /etc/nginx/
ADD default.conf /etc/nginx/conf.d/
#RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose ports
EXPOSE 80

# Set the default command to execute
# when creating a new container
CMD ["nginx", "-g", "daemon off;"]
