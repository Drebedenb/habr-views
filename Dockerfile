FROM python:3.13

WORKDIR /app

RUN apt-get update && apt-get install -y tree && apt-get clean

COPY ./requirements.txt .
RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY . .

WORKDIR /app/habrviews
CMD ["sh", "-c", "python manage.py runserver 0.0.0.0:8000"]
