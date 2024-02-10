build:
	docker build --build-arg DOTNET_VERSION=6.0 -f Dockerfile         -t nullstone/dotnet:6.0         .
	docker build --build-arg DOTNET_VERSION=6.0 -f local.Dockerfile   -t nullstone/dotnet:6.0-local   .
	docker build --build-arg DOTNET_VERSION=6.0 -f builder.Dockerfile -t nullstone/dotnet:6.0-builder .

tags:
	docker tag nullstone/dotnet:6.0         nullstone/dotnet:6
	docker tag nullstone/dotnet:6.0       	nullstone/dotnet
	docker tag nullstone/dotnet:6.0-local   nullstone/dotnet:6-local
	docker tag nullstone/dotnet:6.0-local 	nullstone/dotnet:local
	docker tag nullstone/dotnet:6.0-builder nullstone/dotnet:6-builder
	docker tag nullstone/dotnet:6.0-builder nullstone/dotnet:builder

push:
	docker push nullstone/dotnet:6.0
	docker push nullstone/dotnet:6
	docker push nullstone/dotnet

	docker push nullstone/dotnet:6.0-local
	docker push nullstone/dotnet:6-local
	docker push nullstone/dotnet:local

	docker push nullstone/dotnet:6.0-builder
	docker push nullstone/dotnet:6-builder
	docker push nullstone/dotnet:builder
