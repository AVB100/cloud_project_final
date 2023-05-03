FROM python:3.7-slim-buster

# RUN apt update
# RUN apt install python3-pip -y
# RUN pip3 install Flask

WORKDIR /app
COPY . /app

RUN apt update -y

RUN apt-get update && pip install -r requirements.txt

CMD ["python3", "app.py"]