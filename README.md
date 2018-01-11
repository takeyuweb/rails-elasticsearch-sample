# rails-elasticsearch-sample

README時間が無いので適当、そのままだと動かないかも

## Development

```
docker-compose build
docker-compose up
```

## Heroku

```
heroku create railselasticsearchsample
git push heroku master
heroku run rails db:migrate
```

### with Elasticsearch

https://devcenter.heroku.com/articles/foundelasticsearch

```
heroku addons:create foundelasticsearch --elasticsearch-version 5.6.5 --plugins analysis-kuromoji
heroku addons:open foundelasticsearch
```

Shield => Reset password でパスワードが生成されるので、

```
heroku config:set FOUNDELASTICSEARCH_PASSWORD=パスワード
```

### Create Index

```
heroku run rails c
```

```
Document.__elasticsearch__.create_index!
```
