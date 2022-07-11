# use nginx:alpine as base image
FROM nginx:alpine
LABEL MAINTAINER="Alecsander"

# copy static website index.html into nginx default html folder
COPY  . /usr/share/nginx/html

# export port 80
EXPOSE 80

# run nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
