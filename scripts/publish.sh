#!/bin/bash
set -e

VERSION=$1
echo "Publishing NuGet package version: $VERSION"

# Pack the project
dotnet pack src/FooBarium/FooBarium.csproj --configuration Release --output ./packages -p:PackageVersion="$VERSION" -p:Version="$VERSION"

# Push to GitHub Packages
dotnet nuget push ./packages/*.nupkg --api-key "$NUGET_TOKEN" --source https://nuget.pkg.github.com/Katagawa94/index.json --skip-duplicate
