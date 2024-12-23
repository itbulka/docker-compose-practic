FROM python:3.9.6
WORKDIR /app
COPY app.py requirements.txt /app/
RUN pip install -r requirements.txt
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]