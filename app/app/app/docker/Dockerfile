FROM python:3.10-slim

RUN useradd -m secureuser
WORKDIR /app

COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ .

USER secureuser
EXPOSE 8080

CMD ["python", "main.py"]
