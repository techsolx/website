FROM python:3.7.2-slim-stretch

COPY /app /app
WORKDIR /app

# Install build-essential files 
RUN apt-get update
RUN apt-get install -y --no-install-recommends build-essential
RUN apt-get clean
# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Run app.py when the container launches
CMD ["python", "app.py"]
