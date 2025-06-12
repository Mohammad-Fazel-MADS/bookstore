#The base image we are building on top of
FROM python:3.10-slim

#The working directory we are building into
WORKDIR /usr/scr/app

# Copy all files from outside the container, into the container
COPY . .

# Install the Python/fastapi dependencies
RUN pip install --no-cache-dir -r requirements.txt


# Expose port 8000 to make the application accesible 
EXPOSE 8000

# Define the command to run the fastAPI app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
