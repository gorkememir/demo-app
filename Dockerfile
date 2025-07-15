FROM python:3.11-slim

WORKDIR /code

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ app/

WORKDIR /code/app

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]