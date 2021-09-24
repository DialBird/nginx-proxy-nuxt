FROM nginx:1.21.3

COPY nginx.conf /etc/nginx/conf.d/default.conf

# Let's Encrypt から取得した鍵
# COPY fullchain.pem /etc/ssl
# COPY privkey.pem /etc/ssl

# なんかに使えるかも
ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh /usr/local/bin/wait-for-it.sh
RUN chmod +x /usr/local/bin/wait-for-it.sh
