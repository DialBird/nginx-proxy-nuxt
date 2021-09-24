FROM node:16.10

WORKDIR /root/app

EXPOSE 3000
ENV HOST 0.0.0.0

CMD ["yarn", "dev"]
