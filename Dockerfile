FROM ubuntu

RUN apt update -y && \
    apt install -y git nginx

RUN rm -rf /var/www/html/

RUN  git clone git@github.com:sumankarki9/portfollio-resume-project-docker.git /var/www/html/

EXPOSE 80 

CMD [ "nginx", "-g", "daemon off;" ]
    
    
