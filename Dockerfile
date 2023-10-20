FROM alpine

RUN apk update && apk add --no-cache python3 python3-dev py3-pip \
    && pip install --upgrade pip \
    && apk add --no-cache postgresql-dev \
    && apk add --no-cache build-base

WORKDIR /app

COPY . /app

RUN pip --no-cache-dir install -r requirements.txt

CMD ["python3", "app.py"]