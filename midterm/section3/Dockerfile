FROM python:3.15-slim@sha256:65a65fc7b30b06cb6df4930fd4650697cb23f4c2698ab81fc87e4b031bc36928 AS builder

WORKDIR /build

COPY requirements.lock .

RUN pip install \
    --prefix=/install \
    --no-cache-dir \
    --require-hashes \
    -r requirements.lock

FROM python:3.15-slim@sha256:65a65fc7b30b06cb6df4930fd4650697cb23f4c2698ab81fc87e4b031bc36928

LABEL maintainer="cdrenne1@emich.edu"
LABEL description="IA462 Midterm Hardened Flask Application"

RUN groupadd --system appgroup && \
    useradd --system \
    --gid appgroup \
    --home /app \
    --shell /usr/sbin/nologin \
    appuser

WORKDIR /app

COPY --from=builder /install /usr/local

COPY --chown=appuser:appgroup app/ ./app/

USER appuser

EXPOSE 5000

CMD ["python3", "app/app.py"]
