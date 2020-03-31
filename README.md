# Crawler Week Code

This crawler is made in sinatra BUT i use it only for tests, the archive that we will use is the app/service/search_remote_jobs_service.rb

### how to use

installing dependencies

```
bundle install
```

running server in DEVELOPMENT

```
APP_ENV=development rackup config.ru -o 0.0.0.0
```

get the service data result

```
curl -X "GET" "http://127.0.0.1:9292"
```

## things TODO

- tests with rspec
- dockerize project
