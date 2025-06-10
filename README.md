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
  - 「`http://localhost:3000`」をブラウザで開く

## 終了

1. Dockerコンテナを停止し、 up で作成したコンテナ、ネットワーク、ボリューム、イメージを削除
    ```shell
    docker compose down
    ```

## gitlabコンテナの設定

- 参考: [壊してもいい練習用のgitサーバーを構築しよう](https://qiita.com/magiclib/items/d0ec68886aead86ad510)

### 手順

1. dockerコンテナ起動後、gitlabのrootパスワード確認
  - 1日経過するとファイルが消えてしまうので、忘れないようにコンテナ作成直後に確認
    ```shell
    sudo docker exec rails-docker-practice-gitlab-1 cat /etc/gitlab/initial_root_password
    ```

2. ローカルのgitlabサーバへアクセスする
  - `http://127.0.0.1:12080`

3. rootユーザでログイン

4. 以降の手順は、参考ページを参照
