FROM python:3.10-slim

WORKDIR /app

# Копируем список зависимостей
COPY requirements.txt .

# Устанавливаем библиотеки
RUN pip install --no-cache-dir -r requirements.txt

# Копируем код бота
COPY bot.py .

# Команда запуска
CMD ["python", "bot.py"]