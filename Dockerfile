# In the course we run the app outside Docker
# until lecture 5.
FROM python:3.10
EXPOSE 5000
WORKDIR /app
COPY requirments.txt .
RUN pip install -r requirments.txt
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]