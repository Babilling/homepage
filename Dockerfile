FROM node:8.12.0-alpine

COPY . /homepage/

USER 0

RUN chmod +x homepage/public/scripts/entrypoint.sh

ENTRYPOINT ["sh","homepage/public/scripts/entrypoint.sh"]