FROM python:3.8-slim
WORKDIR /app
COPY . /app
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    RUN pip install --no-cache-dir requests beautifulsoup4 nltk
RUN python -m nltk.downloader punkt stopwords
CMD ["python"]
