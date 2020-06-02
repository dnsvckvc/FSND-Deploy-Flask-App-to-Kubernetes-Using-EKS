From python:3.7.2

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":5000", "main:APP"]



