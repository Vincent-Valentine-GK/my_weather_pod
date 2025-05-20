FROM nginx:1.27.4
# FROM python:3.13.3-bookworm

WORKDIR /app

COPY main.py /app

# CMD ["python", "main.py"]