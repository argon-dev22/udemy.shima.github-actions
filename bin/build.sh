#!/bin/zsh

# 停止中のコンテナを削除
docker stop $(docker ps -q)
docker rm $(docker ps -aq)
echo 'コンテナの初期化が完了しました'

# ビルド
echo 'ビルドを開始します'
docker build -t add-app .
echo 'ビルドが完了しました'

# 実行
docker run -d --name add-app-container -p 8080:8080 add-app
echo 'アプリケーションが起動しました'
