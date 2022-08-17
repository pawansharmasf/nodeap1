FROM public.ecr.aws/docker/library/httpd:2.4
COPY ./code/ /usr/local/apache2/htdocs/
COPY ./conf/ /usr/local/apache2/conf/
EXPOSE 8080
ENV HTTPD_PREFIX=/usr/local/apache2
WORKDIR /usr/local/apache2
CMD ["httpd-foreground"]
