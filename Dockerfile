# Use official Rasa image with dependencies included
FROM rasa/rasa:3.6.21-full

# Copy your project into container
WORKDIR /app
COPY . /app

# Expose the Rasa port
EXPOSE 5005

# Run Rasa server
CMD ["rasa", "run", "--enable-api", "--cors", "*", "--port", "5005"]
