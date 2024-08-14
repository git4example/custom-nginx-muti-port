FROM nginx:1.11-alpine
COPY index80.html /usr/share/nginx/html/index.html
COPY index1972.html /usr/share/nginx/html1972/index.html
COPY index2188.html /usr/share/nginx/html2188//index.html
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80/tcp
EXPOSE 1972/tcp
EXPOSE 2188/tcp
# CMD ["/bin/sh", "-c", "sed -i 's/listen  .*/listen 8080;/g' /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]
CMD ["/bin/sh", "-c", "exec nginx -g 'daemon off;'"]
