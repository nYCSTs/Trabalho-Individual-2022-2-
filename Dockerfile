FROM python:3.9

RUN apt-get update && apt-get install -y \
  build-essential 

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt


WORKDIR /pynalytics

COPY ./pynalytics /pynalytics/

ENTRYPOINT ["python", "main.py"]