FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install flask

RUN mkdir -p /opt/app

COPY application.py /opt/app/

WORKDIR /opt/app

CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

