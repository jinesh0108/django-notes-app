FROM python:3.9-slim

WORKDIR /app/backend

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8010

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
