FROM python:3.11-alpine

WORKDIR /src

COPY requirements/base.txt /src/

RUN pip install -U pip
RUN pip install -r base.txt

COPY . /src/

EXPOSE 8000

CMD [
    'gunicorn', 'repica.wsgi', ':8000'
]