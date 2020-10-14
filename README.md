# docker-python

## コンテナ作成方法</br>
```git clone https://github.com/kino-code/docker-python.git /Users/kinocode/Documents/docker-python```</br>
```cd /Users/kinocode/Documents/docker-python```</br>
```docker-compose up -d```</br></br>

## 確認方法</br>
cron.logファイルが作成される</br>
1分毎にcron.logファイルに追記される</br>
1分毎にcsvファイルが作成される</br>

## Dockerの全削除の方法</br>
Dockerのイメージやコンテナを削除します。下記を上から下まで実行した上で、それを3回繰り返してください。</br>
他のイメージやコンテナも削除されるのでそれをしっかり理解した上で使いましょう。</br>
```docker image prune -af```</br>
```docker volume prune -f```</br>
```docker container prune -f```</br>
```docker system prune -f```</br>
