### Start project
```shell
docker-compose run --rm web sh -c "django-admin startproject app ." --no-cache
```

### Start app
```shell
docker-compose run --rm web sh -c "django-admin startapp mzc_main"
```

### DB migrate
```shell
docker-compose run --rm web sh -c "python manage.py makemigrations"
```
```shell
docker-compose run --rm web sh -c "python manage.py migrate"
```


### Run Test Code
```shell
docker-compose run --rm web sh -c "python manage.py test"
```

### Create Super User
```shell
docker-compose run --rm web sh -c "python manage.py createsuperuser"
```


