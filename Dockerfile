FROM ubuntu:latest

# Install required packages
RUN apt-get update && apt-get install -y python3 python3-pip python3-venv

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Activate the virtual environment and install Flask
RUN /opt/venv/bin/pip install flask

# Create application directory
RUN mkdir -p /opt/app

# Copy your application code
COPY application.py /opt/app/

# Set the working directory
WORKDIR /opt/app

# Set the PATH to include the virtual environment's binaries
ENV PATH="/opt/venv/bin:$PATH"

# Command to run your application
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
