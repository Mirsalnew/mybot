FROM fusuf/whatsasena:latest

RUN git clone https://github.com/Mirsalnew/mybot/root/WhatsAsenaDuplicated
WORKDIR /root/WhatsAsenaDuplicated/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit
RUN git clone https://github.com/Mirsalnew/myboy

CMD ["node", "bot.js"]
