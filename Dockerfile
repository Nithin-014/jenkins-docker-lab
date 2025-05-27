FROM centos:7
ARG HTTP_PROXY
ARG HTTPS_PROXY
ENV http_proxy=$HTTP_PROXY
ENV https_proxy=$HTTPS_PROXY
RUN yum install httpd -y
# ... rest of your Dockerfile
RUN yum install httpd -y
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
