help:
    just --list

install:
    poetry install --all-extras --sync --no-interaction --no-root
    poetry run pre-commit install

requirements:
    poetry lock --no-update
    poetry export -f requirements.txt -o requirements.txt --without-hashes

format:
    poetry run pre-commit run --all

makemigrations app="":
    poetry run python manage.py makemigrations {{app}}

migrate:
    poetry run python manage.py migrate
