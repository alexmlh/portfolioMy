# Serve a static site with Nginx
FROM nginx:alpine

# Copy our Nginx config (handles SPA routing + caching)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your site files into Nginx's web root
# (index.html, assets/, images/, css/, js/, etc.)
COPY . /usr/share/nginx/html

# Expose HTTP
EXPOSE 80

# Nginx default CMD is fine
