# ベースイメージを指定
FROM ruby:3.2.8

# ベースイメージの更新と必要なパッケージのインストール
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim

# 作業ディレクトリを作成
RUN mkdir /myapp

# 作業ディレクトリを設定
WORKDIR /myapp

# Bundlerの設定
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock

# Bundlerのインストール
RUN bundle install

# アプリケーションのソースコードをコンテナにコピー
ADD . /myapp

