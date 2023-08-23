FROM python:3.11-alpine
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements /code/requirements
RUN pip install -r requirements/dev.txt
COPY . /code/