FROM ubuntu:22.04
RUN apt update && apt install wget -y
RUN wget "https://github.com/sigstore/cosign/releases/download/v1.13.1/cosign_1.13.1_amd64.deb" && dpkg -i cosign_1.13.1_amd64.deb
COPY ./script.sh /
RUN chmod +x /script.sh
ENTRYPOINT ["/script.sh"]
