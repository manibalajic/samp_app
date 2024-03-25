FROM python:3.13.0a4-alpine3.19
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD [ "python" "app.py" ]