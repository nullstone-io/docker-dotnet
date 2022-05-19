#!/bin/sh

set -e

echo "Installing dependencies..."
dotnet restore

exec "$@"
