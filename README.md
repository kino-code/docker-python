# docker-python

## コンテナ作成方法</br>
```git clone https://github.com/kino-code/docker-python.git (ディレクトリ名を記述)```</br>
```cd (ディレクトリ名を記述)```</br>
```docker-compose up --build -d```</br></br>

## Dockerの全削除の方法</br>
Dockerのイメージやコンテナを削除します。下記を上から下まで実行した上で、それを3回繰り返してください。</br>
他のイメージやコンテナも削除されるのでそれをしっかり理解した上で使いましょう。</br>
```docker image prune -af```</br>
```docker volume prune -f```</br>
```docker container prune -f```</br>
```docker system prune -f```</br>
