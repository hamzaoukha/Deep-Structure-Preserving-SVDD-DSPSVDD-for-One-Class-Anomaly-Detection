# Simple CPU image for local dev/demo
FROM python:3.11-slim

WORKDIR /app

# System deps
RUN apt-get update && apt-get install -y --no-install-recommends \    build-essential \    git \    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 8501
CMD ["streamlit", "run", "src/apps/streamlit_app.py", "--server.address=0.0.0.0", "--server.headless=true"]
