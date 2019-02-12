FROM nginx:1.15.8-alpine
LABEL Author="Diego Delmiro"
ADD ./config/nginx.conf /etc/nginx/conf.d/nginx.conf
CMD ["nginx", "-g", "daemon off;"]