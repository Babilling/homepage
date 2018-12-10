FROM node:8.12.0-alpine

COPY . /homepage/

ENV FLAPPY_SANTA_URL=http://bit.ly/beta-flappysanta
ENV SANTARMINATOR_URL=http://bit.ly/beta-santarminator

USER 0

RUN chmod +x homepage/public/scripts/entrypoint.sh

HEALTHCHECK CMD netstat -an | grep 8080 > /dev/null; if [ 0 != $? ]; then exit 1; fi;

ENTRYPOINT ["sh","homepage/public/scripts/entrypoint.sh"]