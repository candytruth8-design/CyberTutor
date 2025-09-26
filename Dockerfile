FROM python:3.9.12-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose default Rasa port (optional, can be mapped by host)
EXPOSE 5005

# Run Rasa server letting host handle the ports
CMD ["rasa", "run", "--enable-api", "--cors", "*", "--host", "0.0.0.0"]
