FROM python:3.12-alpine

# Update/install required software
RUN apt update && apt upgrade -y && apt autoremove -y
RUN apt install build-essential -y

# Install Python packages
RUN pip install --no-cache-dir --upgrade pip uv && \
    uv pip install --system --no-cache-dir --upgrade dask[complete] msgpack toolz

# Add group mlil and add root to that group
RUN groupadd -g 1004 mlil
RUN adduser root mlil

# Expose Dask's default port
EXPOSE 8786
