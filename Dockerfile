FROM python:3.6-alpine
WORKDIR /app
COPY requirements.txt .
RUN pip install  --no-cache-dir -r requirements.txt
COPY basic-flask-app /app
EXPOSE 15555
CMD ["python3", "/app/routes.py"]