# ベースイメージの指定
FROM ruby:3.0.6

# Node.jsとYarnのインストール
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get update && apt-get install -y nodejs yarn

# 作業ディレクトリの設定
WORKDIR /app

# Gemfile と Gemfile.lock のコピー
COPY Gemfile Gemfile.lock ./

# Bundler を使って Gem をインストール
RUN bundle install

# Yarnを使ってJavaScriptの依存関係をインストール
COPY package.json yarn.lock ./
RUN yarn install

# 現在のディレクトリの内容をコンテナにコピー
COPY . /app

# コンテナ起動時に実行されるコマンド
CMD ["rails", "server", "-b", "0.0.0.0"]
