# docker練習用のRailsプロジェクト

## 実行手順

## 起動

1. Dockerコンテナを起動する
    ```shell
    # コンテナのビルド
    docker compose build

    # コンテナの起動
    docker compose up -d
    ```

2. ローカルサーバへアクセスする
  - 「http://localhost:3000」をブラウザで開く

## 終了

1. Dockerコンテナを停止し、 up で作成したコンテナ、ネットワーク、ボリューム、イメージを削除
    ```shell
    docker compose down
    ```
