FROM python:latest

RUN mkdir /build
WORKDIR /build

COPY pyweb /build

# COPY pyweb/requirements.txt /build

RUN pip install -r requirements.txt

EXPOSE 5000

CMD [ "python", "pyweb.py"]