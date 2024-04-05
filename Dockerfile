FROM python:3.13.0a4-alpine3.19
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["gunicorn", "--workers=1", "--bind", "0.0.0.0:5000", "app:app"]