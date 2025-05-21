# FROM nginx:1.27.4
# FROM python:3.13.3-bookworm

# WORKDIR /app

# COPY main.py /app

# CMD ["python", "main.py"]

FROM alpine:3.21.3

# Install cURL
RUN apk add --no-cache curl

# Optional: Add a command to run when the container starts
#CMD ["/bin/bash"]
ENTRYPOINT ["curl"]