FROM brunneis/python:3.8.3-ubuntu-20.04
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt
RUN apt-get update && apt-get install -y iputils-ping
CMD mkdir /app
WORKDIR /app
ADD main.py .
ENTRYPOINT ["python", "main.py"]
