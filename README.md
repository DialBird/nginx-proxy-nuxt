# Nginx x Nuxt

## SSL の Setup

- まずオレオレ SSL 証明書を lvh.me 向けに用意して、`~/ssh`ディレクトリに配置する

```bash
$ cat /etc/ssl/openssl.cnf > ~/ssl/SAN.txt
$ printf '[SAN]\nsubjectAltName=DNS:lvh.me,DNS:*.lvh.me' >> ~/ssl/SAN.txt
$ sudo openssl req -x509 -sha256 -nodes -days 3650 \
    -newkey rsa:2048 -subj /CN='*.lvh.me' -keyout lvh.me.key -out lvh.me.crt \
    -config SAN.txt -extensions SAN
```

- ローカルの「キーチェーン」で先に「信頼」しておく（[参考](https://qiita.com/ppworks/items/9651916a51461a708a0e)）
- この際、lvh.me.key（秘密鍵）は、readable 権限を許可しておく必要がある

```bash
$ chmod 644 ~/ssl/lvh.me.key
```

- この`~ssl`ディレクトリをマウントすることで、Nginx がこの証明書を使って SSL プロキシが実現できる

## 起動

```bash
$ yarn install
$ docker compose up -d
```
