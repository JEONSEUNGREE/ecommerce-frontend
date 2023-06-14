FROM nginx:1.25.1
RUN mkdir -p frontend/build
ADD ./build ./frontend/build
RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/conf.d
CMD ["nginx", "-g", "daemon off;"]
