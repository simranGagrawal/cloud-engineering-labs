FROM python:3.11-slim
WORKDIR /app

#wrong order : copying all application code first
COPY . .

#THE FIX: Upgrade pip first, then chain the requiremnets installer
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

CMD ["python", "app.py"]