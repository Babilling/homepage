FROM node:8.12.0-alpine

COPY . /homepage/

USER 0

RUN chmod +x homepage/scripts/entrypoint.sh

ENTRYPOINT ["sh","homepage/scripts/entrypoint.sh"]