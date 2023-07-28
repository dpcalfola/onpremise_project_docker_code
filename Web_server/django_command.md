### Start project
```shell
docker-compose run --rm web sh -c "django-admin startproject app ." --no-cache
```

### Start app
```shell
docker-compose run --rm web sh -c "django-admin startapp app_name"
```

### Run Test Code
```shell
docker-compose run --rm web sh -c "python manage.py test"
```

### Create Super User
```shell
docker-compose run --rm web sh -c "python manage.py createsuperuser"
```


# Create the Django project
docker-compose run web django-admin startproject config .

# Create a new Django app
docker-compose run web python manage.py startapp mzc-main
