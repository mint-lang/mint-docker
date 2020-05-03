# Mint in Docker

This is a starting repository if you want to run Mint in a docker container.

To start the development server just clone the repository and run:
```sh
docker-compose up
```

To run the CLI via docker
```sh
# Replace ... with your CLI commands for mint
docker exec -it mint-docker_mint_1 /bin/mint ...
```
