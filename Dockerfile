FROM python:2.7
MAINTAINER alibungker "alibungker@gmail.com"
RUN apt-get update && apt-get install nano
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
