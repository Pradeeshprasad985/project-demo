#!/bin/bash

if [ ! -f Dockerfile ]; then
cat <<EOF > Dockerfile
FROM python:3.9
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt || true
CMD ["python", "app.py"]
EOF
fi