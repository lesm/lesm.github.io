---

title: Middleman deploy via Git from Docker
date: 2021-08-19 04:17 UTC
tags: 

---

This blog was built with [Middleman](https://middlemanapp.com/) and deploy to [GitHub Pages](https://pages.github.com/).

I'm using the [middleman-deploy](https://github.com/karlfreeman/middleman-deploy) gem to deploy via Git.

Last year I decided to use docker to develop and running this blog and one of the problems I had at that moment it was to make 
the deploy works from the docker container.

And that's what this post is about.

I'm using `ruby:2.7.1-alpine3.12` as docker base image.

Before I added docker to this project the dependencies were installed locally and since I have Git already setup it was enough to run the `middleman deploy` command from the root of the project to deploy to GitHub Pages.

It worked because the `middleman-deploy` gem had access to these two files:

```
  ~/.gitconfig
  ~/.ssh/id_rsa
```

But now all the dependencies live inside of the docker container so we need to setup Git inside of the container.

The `middleman-deploy` gem makes automatics commits in the deploy process and the commits are make with the user that is in the `~/.gitconfig` file.

To deploy, the `middleman-deploy` gem pushes the files generates in the build process to GitHub and it uses the `~/.ssh/id_rsa` file to authenticate over SSH.

We need to ensure that the Docker container has access to the two files mentioned above.

We'll use [docker-compose](https://docs.docker.com/compose/) to make easier our setup.

Docker implements secrets to manage sensitive data like our ssh key.
_Docker can read secrets either from its own database (e.g. secrets made with `docker secret create`) or from a file_.

For the `~/.gitconfig` file we're going to stored it as a volume and for the `~/.ssh/id_rsa` file we'll use secrets.

docker-compose.yml

```bash
version: "3.7"

services:
  web:
    build: .
    volumes:
      - .:/usr/src/app
      - ~/.gitconfig:/root/.gitconfig # Include our .gitconfig file into the container

secrets:
  host_ssh_key: # The name to identify the secret
    file: ~/.ssh/id_rsa # The file to create as secret
```

The location of the mount point within the container is `/run/secrets/<secret_name>` 
but we know that the `id_rsa` file must be inside of the `~/.ssh` directory.

So the last step is update the Dockerfile to create the `~/.ssh` directory and make a symbolic link for the `id_rsa` file.

Docker

```bash
RUN mkdir ~/.ssh && ln -s /run/secrets/host_ssh_key ~/.ssh/id_rsa
```

With everything setup we can now deploy to GitHub Pages from a Docker container.

```bash
  # Generate the docker image
  docker-compose build

  # Start the web service
  docker-compose up -d

  # Deploy from Docker container
  docker-compose exec web middleman deploy
```


**Dockerfile:**

```bash
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

CMD ["bundle", "exec", "middleman", "s", "--bind-address", "0.0.0.0"]
```

**docker-compose.yml:**

```bash
version: "3.7"

services:
  web:
    build: .
    volumes:
      - .:/usr/src/app
      - ~/.gitconfig:/root/.gitconfig
    ports:
      - 4567:4567
    secrets:
      - host_ssh_key

secrets:
  host_ssh_key:
    file: ~/.ssh/id_rsa
```
