FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY main.py .
# Variables via entorno: DISCORD_TOKEN, OPENAI_API_KEY
CMD ["python", "main.py"]