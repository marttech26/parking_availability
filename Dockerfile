# Use an official Python runtime as a parent image
FROM python:3.9

# Install OpenGL libraries
RUN apt-get update && apt-get install -y libgl1-mesa-glx

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install numpy first
RUN pip install --no-cache-dir numpy

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run the Python script when the container launches
CMD ["python", "./main.py"]

