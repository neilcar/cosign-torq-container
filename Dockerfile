FROM ubuntu:22.04
RUN apt update && apt install cosign -y
COPY script.sh script.sh
ENTRYPOINT ["script.sh"]
