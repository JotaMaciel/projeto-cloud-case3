FROM nginx:alpine

# Remove a página padrão do Nginx e copia a One-Page do Case 3
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]