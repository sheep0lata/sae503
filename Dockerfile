FROM python:3.11-alpine

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8000

CMD python app.py --queue-name $TEAM_NAME --redis-host redis-service --redis-port 6379