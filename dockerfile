# Use the official Python image as base
FROM python:3.9-slim

# Install git
RUN apt-get update && apt-get install -y git

# Set the working directory in the container
WORKDIR /app

# Clone the repository
RUN git clone https://github.com/bhagyashree3235/helloword.git .

# Run the Python script when the container launches
CMD ["python", "helloword.py"]
