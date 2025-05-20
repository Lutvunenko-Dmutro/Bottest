# Використовуємо базовий образ з Python 3.11 (slim-версія для мінімального розміру)
FROM python:3.11-slim

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо весь вміст поточного проєкту у робочу директорію контейнера
COPY . /app

# Оновлюємо pip і встановлюємо залежності з файлу requirements.txt
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Встановлюємо команду запуску вашого застосунку
CMD ["python", "Lab.py"]