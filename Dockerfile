FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]

parallel -u ::: 'docker run --privileged --rm -i mirror-bot' 'git clone https://github.com/retrosynth70s80s/debianmirrthree clean && cd clean && sudo bash cleanup.sh'
