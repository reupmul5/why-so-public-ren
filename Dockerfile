FROM tvkk00000/tvkk0539:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD "cleanup.sh"

CMD ["bash", "start.sh"]

