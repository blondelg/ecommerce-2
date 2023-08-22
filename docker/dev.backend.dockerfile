FROM python:3.11-alpine
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements /code/requirements
RUN pip install -r requirements/dev.txt
COPY . /code/