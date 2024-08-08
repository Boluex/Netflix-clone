FROM python:3.10
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . .
RUN python -m  pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["gunicorn","--bind","0.0.0.0:8000","netflixprj.wsgi:application"]

