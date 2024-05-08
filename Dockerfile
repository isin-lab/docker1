FROM node:latest

ENV NAME=default_name
ENV SURNAME=default_surname

CMD node -e "console.log('Привет, ' + process.env.NAME + ' ' + process.env.SURNAME + '!');"


