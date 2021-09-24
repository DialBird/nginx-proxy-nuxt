FROM nginx:1.21.3

COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /etc/letsencrypt

# Let's Encrypt から取得した鍵
COPY fullchain.pem /etc/letsencrypt
COPY privkey.pem /etc/letsencrypt

# なんかに使えるかも
ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh /usr/local/bin/wait-for-it.sh
RUN chmod +x /usr/local/bin/wait-for-it.sh
