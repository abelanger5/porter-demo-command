FROM python:3.8-slim-buster

RUN mkdir /app
ADD . /app

RUN apt-get update && apt-get install curl

RUN (curl -Ls https://cli.doppler.com/install.sh || wget -qO- https://cli.doppler.com/install.sh) | sh

CMD ["doppler", "run", "--", "python3", "/app/demo1.py"]
