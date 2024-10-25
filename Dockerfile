FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip python3-venv

RUN python3 -m venv /opt/venv

RUN /opt/venv/bin/pip install flask

RUN mkdir -p /opt/app

COPY application.py /opt/app/

WORKDIR /opt/app

ENV PATH="/opt/venv/bin:$PATH"

CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
