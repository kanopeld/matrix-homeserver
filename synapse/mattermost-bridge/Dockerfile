FROM node:latest

RUN apt install git

RUN mkdir /matrix-appservice-mattermost && cd /matrix-appservice-mattermost
WORKDIR /matrix-appservice-mattermost

RUN git clone https://github.com/dalcde/matrix-appservice-mattermost .

RUN npm i
RUN npm run build

COPY docker-entripoint.sh /matrix-appservice-mattermost
RUN chmod -f +x /matrix-appservice-mattermost/docker-entripoint.sh

RUN mkdir -p /data
RUN chmod -Rf 775 /data

CMD ["./docker-entripoint.sh"]