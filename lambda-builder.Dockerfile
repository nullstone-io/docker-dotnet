ARG DOTNET_VERSION
FROM mcr.microsoft.com/dotnet/sdk:${DOTNET_VERSION}

RUN apt update && apt install -y zip curl jq
RUN dotnet tool install -g Amazon.Lambda.Tools
ENV PATH="${PATH}:/root/.dotnet/tools"

WORKDIR /build/
