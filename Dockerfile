FROM python:3.12-alpine

# Update/install required software

# If using base or slim python images (debian)
#RUN apt update && apt upgrade -y && apt autoremove -y
#RUN apt install build-essential -y

# If using alpine python image
RUN apk add build-base linux-headers

# Install Python packages
RUN pip install --no-cache-dir --upgrade pip dask[complete] msgpack toolz

# Add group mlil and add root to that group

# If using base or slim python images (debian)
#RUN groupadd -g 1004 mlil
#RUN adduser root mlil

# If using alpine python image
RUN addgroup -g 1004 mlil
RUN adduser root mlil

# Expose Dask's default port
EXPOSE 8786
