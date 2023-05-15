FROM ubuntu:16.04
RUN apt-get update -y && \
  apt-get install python3-pip idle3 -y && \
  pip3 install --no-cache-dir --upgrade pip &&
RUN pip install flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
