FROM python:3.8-slim-buster
WORKDIR /app
COPY app.py app.py
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
CMD [ "pytest", "-s", "app.py"]