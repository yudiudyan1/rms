# Use the official Python image from Docker Hub
FROM python:3.11.1-slim-buster

# Set work directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && \
    apt-get install -y default-libmysqlclient-dev python3-dev && \
    rm -rf /var/lib/apt/lists/*

# Copy requirements.txt file
COPY requirements.txt /app/

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
# RUN pip install mysqlclient==2.2.1
RUN pip install PyMySQL
RUN pip install mysql-connector-python==9.0.0

# Copy the entire project
COPY . /app/
EXPOSE 1111

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
