# Weather Forecast

Weather Forecast is a minimal app which allow you to get weather forcast when you search by address.

- [Setup](#setup)
- [Local Development](#local-development)
- [Licensing](#licensing)

## Setup

**Pre Requisites**
```
ruby - 2.6.2
rails - 6.1.4
redis
```

**Clone the repo locally**
```
cd ~/Projects
git clone https://github.com/maheshkurma/weather_forecast.git
```

**Install required dependencies**
```
cd contentful-rest-api
cat .ruby-version | rbenv install
gem install bundler
rbenv rehash
bundle install
```

## Local Development

**Unit Tests**
```
bundle exec rspec
```

**Development server**
```
bundle exec rails s
```

Visit Base Url: http://localhost:3000 to get started
Example: http://localhost:3000




## Licensing

MIT - [full license](./LICENSE)
