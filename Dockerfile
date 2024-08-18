FROM python:3.10
WORKDIR /app
COPY requirments.txt .
RUN pip install --no-cache-dir --upgrade -r requirments.txt
COPY . .
#CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:create_app()"]
CMD ["/bin/bash", "docker-entrypoint.sh"]