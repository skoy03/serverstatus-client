FROM ubuntu

RUN apt-get update && apt-get -y install python3 && apt-get -y install iproute2

WORKDIR /app

COPY . /app

CMD ["python3", "./client-linux.py"]
