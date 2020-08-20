FROM ruby:2.7.1-alpine3.12

RUN apk add --update --no-cache \
  build-base \
  tzdata \
  git \
  openssh \
  yarn

RUN mkdir ~/.ssh && ln -s /run/secrets/host_ssh_key ~/.ssh/id_rsa

WORKDIR ./usr/src/app

COPY Gemfile* ./

RUN bundle install

COPY yarn* ./

RUN yarn install

COPY . .

EXPOSE 4567

CMD ["middleman", "s", "--bind-address", "0.0.0.0"]
