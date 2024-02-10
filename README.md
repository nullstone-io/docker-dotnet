# nullstone/dotnet

.NET Base Image that is optimized for production and configured to operate locally the same way.
This image is very opinionated; however, not restrictive.

## Quick Reference

- Maintained by
  [Nullstone](https://nullstone.io)
- Where to get help
  [Nullstone Slack](https://join.slack.com/t/nullstone-community/signup)

## Supported Tags and respective `Dockerfile` links

- [latest, 6, 6.0](Dockerfile)
- [local, 6-local, 6.0-local](local.Dockerfile)
- [lambda-builder, 6-lambda-builder, 6.0-lambda-builder](lambda-builder.Dockerfile)

## Production vs Local

This repository builds an image for local use and production use.

The local image configures:
- Configures environment via `ASPNETCORE_ENVIRONMENT=Development` env var.
- Configures listening port via `ASPNETCORE_URLS=http://+:5001` env var.
- On boot, the image runs `dotnet restore` (means you only need to restart the docker container when updating dependencies)

The production images configures:
- Configures a non-root user to run app
- Configures listening port via `ASPNETCORE_URLS=http://+:9000` env var.
