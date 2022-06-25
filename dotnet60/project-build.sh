#!/bin/sh
dotnet restore fission-dotnet60.csproj
dotnet publish fission-dotnet60.csproj -c Release -o out
