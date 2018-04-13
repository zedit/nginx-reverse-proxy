# Run on Ubuntu
FROM nginx

# Expose dgraph ports
EXPOSE 80
EXPOSE 8080

# Copying config files
COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx_entrypoint.sh /nginx_entrypoint.sh

# Run!
ENTRYPOINT ["./nginx_entrypoint.sh"]
