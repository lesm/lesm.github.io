# lesm.github.io

Mi blog

# Setup
```bash
docker-compose build
docker-compose up -d
```

# Middleman running
http://0.0.0.0:4567/

# Create an article
```bash
docker-compose exec web sh -c 'middleman article "middleman deploy using docker"'
```

# Deploy
```
docker-compose exec web middleman deploy
```
