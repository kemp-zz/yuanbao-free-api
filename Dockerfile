FROM  python:3.10-slim

WORKDIR /app

COPY requirements.txt .
COPY app.py .
COPY src/ ./src/

RUN pip install  --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python", "app.py"]
