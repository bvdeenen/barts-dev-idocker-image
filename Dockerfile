FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y curl openssh-server postgresql-client
RUN rm -rf /var/lib/apt/lists/*
RUN useradd -m -p bart -U bart
USER bart
WORKDIR /home/bart
COPY --chown=bart:bart --chmod=0700 .ssh/ ./.ssh/
COPY startup.sh /startup.sh
USER root
CMD ["/bin/sh", "-c", "/startup.sh"]
