# Simple Python Flask Dockerized Application#

Build image dengan mengikuti perintah di bawah ini 


```bash
$ git clone https://github.com/bungkercorp/flaskdocker.git
```

```bash
$ cd flaskdocker
```

```bash
$ docker build -t flaskdocker:latest .
```

Run the Docker container using the command shown below.

```bash
$ docker run -d -p 81:5000 --name flaskdocker flaskdocker:latest
```

nah setelah selesai itu semua cobalah jalankan menggunakan file docker-compose dengan cara perintah seperti dibawah : 

```bash
$ docker-compose up --build
```
maka akan tampil seperti dibawah ini 

```bash
alibungker@dev:~/Documents/FLASK/flaskbasic|master⚡
⇒  docker-compose up --build
Building flaskbasic
Step 1/7 : FROM python:2.7
 ---> 17c0fe4e76a5
Step 2/7 : MAINTAINER Shekhar Gulati "shekhargulati84@gmail.com"
 ---> Using cache
 ---> 458f0a9dc796
Step 3/7 : COPY . /app
 ---> Using cache
 ---> d2986a07b098
Step 4/7 : WORKDIR /app
 ---> Using cache
 ---> 74a37b597321
Step 5/7 : RUN pip install -r requirements.txt
 ---> Using cache
 ---> e861e3d3b7dc
Step 6/7 : ENTRYPOINT ["python"]
 ---> Using cache
 ---> de117ce9f7d4
Step 7/7 : CMD ["app.py"]
 ---> Using cache
 ---> dd94ac6feab6
Successfully built dd94ac6feab6
Successfully tagged flaskbasic_flaskbasic:latest
Creating sosmed ... done
Attaching to sosmed
sosmed        |  * Serving Flask app "app" (lazy loading)
sosmed        |  * Environment: production
sosmed        |    WARNING: Do not use the development server in a production environment.
sosmed        |    Use a production WSGI server instead.
sosmed        |  * Debug mode: on
sosmed        |  * Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)
sosmed        |  * Restarting with stat
sosmed        |  * Debugger is active!
sosmed        |  * Debugger PIN: 300-993-452
sosmed        | 172.17.0.1 - - [12/Aug/2018 16:31:30] "GET / HTTP/1.1" 200 -
sosmed        | 172.17.0.1 - - [12/Aug/2018 16:31:31] "GET /favicon.ico HTTP/1.1" 404 -
sosmed        |  * Detected change in '/app/app.py', reloading
sosmed        |  * Restarting with stat
sosmed        |  * Debugger is active!
sosmed        |  * Debugger PIN: 300-993-452
sosmed        | 172.17.0.1 - - [12/Aug/2018 16:31:51] "GET / HTTP/1.1" 200 -

```
Setelah selesain semua untuk mengakses aplikasi flask kita silakan buka browser dan ketik http://localhost:81
# flaskdocker
