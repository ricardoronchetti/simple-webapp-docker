FROM ubuntu

RUN apt-get update
RUN apt-get install -y python2
RUN apt-get install -y python-pip
RUN pip2 install flask

COPY app.py /opt/

WORKDIR /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
