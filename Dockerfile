FROM nginx
MAINTAINER Fernandinho fernandinho@silva.com.br
LABEL Description = "Conteiner do curso"
LABEL class ="Laboratorio"
EXPOSE 80
VOLUME [/usr/share/nginx/html/share]
COPY /site-nginx/* /usr/share/nginx/html/share
ARG via_arg=vv
ENV via_env=${via_arg}
RUN apt-get update
