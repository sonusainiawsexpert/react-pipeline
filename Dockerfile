FROM nginx:alpine

COPY build/. /app

RUN rm -rf /usr/share/nginx/html \
 && ln -s /app /usr/share/nginx/html

Expose 80/tcp