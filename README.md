# docker-practice
To get familiar with docker

## command

- `docker build -t apacheubuntu2:1.0 . `

- `docker run -t -d -P --name apache2container apacheubuntu2:1.0`

We can override CMD by passing arguments

- `docker run -it testcontainer:latest echo "Docker test"`

- `docker run -it --entrypoint=sleep testcontainer:latest 10`

- `docker-compose up -d`

- `docker-compose down`

# References:
[configuring-docker-for-use-with-github-packages](https://docs.github.com/en/packages/guides/configuring-docker-for-use-with-github-packages)

[pushing-and-pulling-docker-images](https://docs.github.com/en/packages/guides/pushing-and-pulling-docker-images)

[configuring-access-control-and-visibility-for-container-images](https://docs.github.com/en/packages/guides/configuring-access-control-and-visibility-for-container-images)

[configuring-docker-for-use-with-github-packages](https://docs.github.com/en/packages/guides/configuring-docker-for-use-with-github-packages)
