# how to run docker locally

# https://rest-apis-flask.teclado.com/docs/deploy_to_render/docker_with_gunicorn/
```
FROM python:3.10
EXPOSE 5000
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"] # --below command takes precedence

# Run in local host CMD
docker run -dp 5000:5000 -w /app -v "$(pwd):/app" IMAGE_NAME sh -c "flask run --host 0.0.0.0"
```