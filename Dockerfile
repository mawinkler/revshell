FROM python:slim

# RUN apt-get update && \
#     apt-get install -y net-tools curl ssh iputils-ping netcat socat nmap groff build-essential && \
#     pip install awscli
RUN apt-get update && \
    apt-get install -y net-tools curl ssh iputils-ping netcat socat nmap groff build-essential

COPY ./docker-entrypoint.sh /

ENTRYPOINT [ "/docker-entrypoint.sh" ]