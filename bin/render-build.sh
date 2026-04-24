#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate # これが本番環境でテーブルを作る命令です
git add -A
git commit -m "Force redeploy"
git push
