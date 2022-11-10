FROM ubuntu:22.04
RUN apt update && apt install wget -y
RUN wget "https://github.com/sigstore/cosign/releases/download/v1.6.0/cosign_1.6.0_amd64.deb" && dpkg -i cosign_1.6.0_amd64.deb
COPY script.sh script.sh
RUN chmod +x script.sh
ENTRYPOINT ["script.sh"]
