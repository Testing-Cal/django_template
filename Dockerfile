FROM python:3.11-slim
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV context ''
ENV port 8000 
RUN mkdir /code
WORKDIR /code
RUN pip3 install --upgrade pip
COPY requirements.txt /code/
RUN pip3 install -r requirements.txt
COPY . /code/
CMD python manage.py runserver 0.0.0.0:$port
