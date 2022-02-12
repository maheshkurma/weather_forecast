# Weather Forecast

Weather Forecast is a minimal app which allow you to get weather forcast when you search by address.

**What is Contentful?**

[Contentful](https://www.contentful.com/) provides content infrastructure for digital teams to power websites, apps, and devices. Unlike a CMS, Contentful was built to integrate with the modern software stack. It offers a central hub for structured content, powerful management and delivery APIs, and a customizable web app that enable developers and content creators to ship their products faster.

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
