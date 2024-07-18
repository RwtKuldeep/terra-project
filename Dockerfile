FROM python:3.10.5

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY . /app

RUN pip install django=4.0.6

EXPOSE 8000

CMD ["python","runserver","manage.py","0.0.0.0:8000"]
