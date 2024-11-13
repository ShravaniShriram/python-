FROM ubuntu:latest

# Set the working directory in the image
WORKDIR /app

# Copy the files from the host file system to the image file system (. - file should be present in current directory)
COPY . /app 

# Install the necessary packages 
RUN apt-get update && apt-get install -y python3 python3-pip 

# Run a command to start the application (filename)
CMD ["python3", "py.py"] 
