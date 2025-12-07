# Base image nginx untuk static file
FROM nginx:1.27-alpine
# Hapus default config dan pakai yang simple
RUN rm -rf /usr/share/nginx/html/* /etc/nginx/conf.d/default.conf
# Copy file static kamu (index.html, css, js, dll)
COPY . /usr/share/nginx/html
# Config nginx minimal
COPY nginx.conf /etc/nginx/conf.d/site.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
