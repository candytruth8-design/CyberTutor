# Use Python 3.9 base image
FROM python:3.9-slim

WORKDIR /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Start Rasa
CMD ["rasa", "run", "--enable-api", "--cors", "*", "--port", "5005"]
