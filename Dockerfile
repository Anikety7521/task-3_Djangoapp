FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["gunicorn", "myproject.wsgi:application", "--bind", "0.0.0.0:8080"]

