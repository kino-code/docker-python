# docker-python

## コンテナ作成方法</br>
```git clone https://github.com/kino-code/docker-python.git /Users/kinocode/Documents/docker-python```</br>
```cd /Users/kinocode/Documents/docker-python```</br>
```docker-compose up -d```</br></br>

## 確認方法</br>
cron.logファイルが作成される</br>
1分毎にcron.logファイルに追記される</br>
1分毎にcsvファイルが作成される</br>

## Dockerの全削除の方法
Dockerのイメージやコンテナを削除します。他のイメージやコンテナも削除されるのでそれをしっかり理解した上で使いましょう。
```docker image prune -af```
```docker volume prune -f```
```docker container prune -f```
```docker system prune -f```
