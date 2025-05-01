FROM public.ecr.aws/docker/library/python:3.12.8-slim
WORKDIR /app

RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install --no-cache-dir sqlmesh==0.178.2 #imports work correctly in 0.151.2, but not in 0.153.0

COPY . .