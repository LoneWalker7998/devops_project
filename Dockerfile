FROM centos:latest
MAINTAINER abhishekm667ca@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
RUN yum install git -y
WORKDIR /var/www/html
RUN cd /var/www/html
RUN git clone https://github.com/iamdhavalparmar/newrepo.git
RUN cp -rvf newrepo/* .
RUN rm -rf newrepo 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
