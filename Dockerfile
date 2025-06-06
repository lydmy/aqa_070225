# Використовуємо офіційний образ Python версії 3.9
FROM python:3.11
# Копіюємо файли з локальної директорії в контейнер
COPY . /app
# Встановлюємо залежності для тестування
RUN pip install -r app/requirements.txt
# -r requirements.txt
# Задаємо робочу директорію контейнера
WORKDIR /app
# Виконуємо команду для запуску тестів під час створення контейнера
CMD ["pytest", "-v", "/app/lesson_24"]