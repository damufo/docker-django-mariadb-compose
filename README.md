# docker-django-mariadb-compose
Docker Compose to set up and run a simple Django/MariaDB app

This quick-start guide demonstrates how to use Docker Compose to set up and run a simple Django/MariaDB app.
Requirements:
- Docker
- Docker-compose

## Installation
<pre>
$ git clone https://github.com/damufo/docker-django-mariadb-compose.git
$ cd docker-django-mariadb-compose
$ docker-compose run web django-admin startproject composeexample .
$ sudo chown -R $USER:$USER .
</pre>
Edit file composeexample/settings.py and set database section as:
<pre>
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'mariadb',
        'USER': 'mariadb',
        'PASSWORD': 'mariadb',
        'HOST': 'db',
        'PORT': 3306,
        'OPTIONS': {
            'init_command': "SET sql_mode='STRICT_TRANS_TABLES', innodb_strict_mode=1",
        },
    }
}
</pre>

Finally:

<pre>$ docker-compose up</pre>
or
<pre>$ docker-compose up -d</pre>

and open http://localhost:8009/

 

