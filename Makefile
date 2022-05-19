build:
	docker build --build-arg DOTNET_VERSION=6.0 -f Dockerfile       -t nullstone/dotnet:6.0       .
	docker build --build-arg DOTNET_VERSION=6.0 -f local.Dockerfile -t nullstone/dotnet:6.0-local .

tags:
	docker tag nullstone/dotnet:6.0       nullstone/dotnet:6
	docker tag nullstone/dotnet:6.0       nullstone/dotnet
	docker tag nullstone/dotnet:6.0-local nullstone/dotnet:6-local
	docker tag nullstone/dotnet:6.0-local nullstone/dotnet:local

push:
	docker push nullstone/dotnet:6.0
	docker push nullstone/dotnet:6
	docker push nullstone/dotnet

	docker push nullstone/dotnet:6.0-local
	docker push nullstone/dotnet:6-local
	docker push nullstone/dotnet:local
