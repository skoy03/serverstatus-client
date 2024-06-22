FROM python:3.7

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN apt-get update && apt-get -y install python3 && apt-get -y install iproute2

WORKDIR /app

COPY . /app

CMD ["python3", "./client-linux.py"]
