
# Укажите базовый образ Python (выберите нужную версию)
FROM python:3.9

# Установите рабочую директорию внутри контейнера
WORKDIR /appinsidecontainer

# Скопируйте файлы проекта в контейнер
COPY . /appinsidecontainer

# Установите зависимости, если они указаны в Pipfile
RUN pip install pipenv && pipenv install --system --deploy

# Укажите команду, которая будет запускать ваш CLI-приложение
CMD ["python", "init.py"]