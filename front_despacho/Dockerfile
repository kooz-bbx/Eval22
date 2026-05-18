#Stage 1 build del frontend
FROM node:20-alpine AS builder

WORKDIR /build

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

#Stage 2 servir con nginx
FROM nginx:alpine

#usuario sin permisos de root
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /build/dist /usr/share/nginx/html

RUN chown -R appuser:appgroup /usr/share/nginx/html && \
    chown -R appuser:appgroup /var/cache/nginx && \
    chown -R appuser:appgroup /var/log/nginx && \
    touch /var/run/nginx.pid && \
    chown -R appuser:appgroup /var/run/nginx.pid

USER appuser
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
