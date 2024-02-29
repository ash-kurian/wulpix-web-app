# wulpix-web-app

A sample web application created to test out end to end deployment in kubernetes kind cluster.

## Tech Stack

- Programming Languages: python, html, css
- Containerisation: Docker
- CI/CD: GitHub Actions
- Container Registry: DockerHub

## How To Configure

The following docker command will configure the app in your localhost.

```
docker run -d --name <CONAINER_NAME> -p <LOCAL_PORT>:8000 asheranilkurian/wulpix:<IMAGE_TAG>
```

Latest IMAGE_TAG: 7f5f445

Replace:-

- CONAINER_NAME: A suitable name for your wulpix container. (Note:- Either remove the previous container or use a different name if you want to run a new container)
- LOCAL_PORT: The port number you wish to run the app on localhost.
- IMAGE_TAG: Preferably with the latest tag mentioned above.

## How To Access

1. Follow the above section to configure the app in your local.
2. Open a new browser tab.
3. Hit the url `http://localhost:<LOCAL_PORT>` (Replace the url with your chosen localport)
