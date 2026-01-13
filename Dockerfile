FROM sbrg/masspy

USER root

RUN mkdir -p /var/lib/apt/lists/partial \
 && apt-get update \
 && apt-get install -y --no-install-recommends \
    libncurses5 libtinfo5 \
 && rm -rf /var/lib/apt/lists/*
