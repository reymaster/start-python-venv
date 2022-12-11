SHELL=/bin/bash

# Commands
init:
	pipenv install && \
	pipenv install django && \
	pipenv shell

terminal:
	pipenv shell

new:
	django-admin startproject $(name) && \
	mv /home/python/app/$(name)/manage.py . && \
	mv /home/python/app/$(name)/$(name)/* /home/python/app/$(name) && \
	rm -rf /home/python/app/$(name)/$(name)

init-dev:
	pipenv install && \
	python manage.py migrate && \
	python manage.py loaddata initial_data && \
	python manage.py loaddata auth_user && \
	python manage.py runserver

r:
	python manage.py runserver 0.0.0.0:8000

migration:
	python manage.py makemigrations

migrate:
	python manage.py migrate

m:
	python manage.py makemigrations && python manage.py migrate

superuser:
	python manage.py createsuperuser

app:
	python manage.py startapp $(name)

dumpdata:
	mkdir -p app/fixtures && \
	touch app/fixtures/initial_data.json && \
	python manage.py dumpdata --indent 4 --natural-foreign --natural-primary app > app/fixtures/initial_data.json && \
	python manage.py dumpdata --indent 4 --natural-foreign --natural-primary auth.User > app/fixtures/auth_user.json
