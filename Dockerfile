FROM python:3.11.4

RUN apt-get update && \
    apt-get install -y \
        libgl1 \
        libpq-dev \
        ffmpeg \
        libsm6 \
        libxext6 \
        python3-pip \
        python3-dev \
        python3-opencv

RUN pip install torch torchvision --index-url https://download.pytorch.org/whl/cu118

RUN pip install -U --no-cache-dir \
    requests \
    opencv-python \
    flake8 \
    ultralytics \
    sahi \
    shapely==2.0.5