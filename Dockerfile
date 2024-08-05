# In the course we run the app outside Docker
# until lecture 5.
FROM python:3.10
WORKDIR /app
COPY requirments.txt .
RUN pip install --no-cache-dir --upgrade -r requirments.txt
COPY . .
CMD ["gunicorn" "--bind", "0.0.0.0:80", "app:create_app()"]