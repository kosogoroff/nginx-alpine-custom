FROM alpine:latest

# Ставим nginx через apk (пакетный менеджер Alpine)
RUN apk add --no-cache nginx

# Создаём папку для сайта, если её нет
RUN mkdir -p /usr/share/nginx/html

# Копируем нашу кастомную страницу в корень сайта
COPY index.html /usr/share/nginx/html/index.html

# ВАЖНО: удаляем дефолтный конфиг, который отдаёт 404
RUN rm -f /etc/nginx/http.d/default.conf

# Кладём наш конфиг. 
# Важно: клади именно в http.d/, потому что в nginx.conf есть include /etc/nginx/http.d/*.conf
COPY default.conf /etc/nginx/http.d/default.conf

# Открываем порт 80
EXPOSE 80

# Запускаем nginx на переднем плане (без демона, так нужно для Docker)
CMD ["nginx", "-g", "daemon off;"]
