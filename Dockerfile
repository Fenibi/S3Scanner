FROM python:3-alpine
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
USER root
ENTRYPOINT ["python", "s3scanner.py"]
