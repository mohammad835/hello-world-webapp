FROM python:latest

WORKDIR /
ADD ./requirements.txt /requirements.txt
ADD ./app.py /app.py
RUN pip install -r requirements.txt
ENTRYPOINT [ "/usr/local/bin/gunicorn", "app:app" ]
