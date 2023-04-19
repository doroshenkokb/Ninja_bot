FROM python:3.7.9

COPY requirements.txt requirements.txt
RUN python -m pip install --upgrade pip && pip install -r requirements.txt

WORKDIR /app

COPY kittybot.py kittybot.py

ENTRYPOINT ["python", "kittybot.py"]
