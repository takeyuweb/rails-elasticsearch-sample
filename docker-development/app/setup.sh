#!/bin/bash

# このファイルは docker-compose build によってイメージに含められ、
# コンテナの実行時にフックされます。
# 従って変更した場合は docker-compose build が必要です。

# ほかのコンテナからもマウントされたボリューム内の同じ設定を参照するように --local を設定
bundle config --local retry 5
bundle config --local jobs 4
bundle config --local path vendor/bundle

bundle install

bin/rails db:version
if [ $? = 1 ]
  bin/rails db:setup
then
  bin/rails db:migrate
fi
