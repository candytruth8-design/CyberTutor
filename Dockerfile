# Use Python 3.10 explicitly
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy everything
COPY . /app

# Upgrade pip and install requirements
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the port Rasa will run on
EXPOSE 5005

# Start Rasa backend
CMD ["python", "-m", "rasa", "run", "--enable-api", "--port", "5005", "--host", "0.0.0.0"]
