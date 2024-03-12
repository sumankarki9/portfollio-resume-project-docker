FROM ubuntu

RUN apt update -y

RUN apt install nginx -y
RUN apt install git -y 

RUN rm -rf /var/www/html/


RUN git clone https://github.com/sumankarki9/portfollio-resume-project-docker.git /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
