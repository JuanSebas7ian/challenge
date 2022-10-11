FROM python:3.9-bullseye
WORKDIR /app/
COPY /app/requirements.txt /app/
RUN python -m pip install -r /app/requirements.txt
COPY ./model /model/
COPY ./app /app
EXPOSE  8888
WORKDIR /app/
CMD ["uvicorn","--host","0.0.0.0","main:app"]