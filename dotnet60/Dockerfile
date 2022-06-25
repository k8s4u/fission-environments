FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine AS builder

COPY * /proj/
RUN cd /proj && ./project-build.sh

# Build env image
FROM mcr.microsoft.com/dotnet/runtime:6.0-alpine

WORKDIR /fission-workdir
COPY --from=builder /proj/out .
EXPOSE 8888

ENTRYPOINT ["dotnet"]

CMD ["fission-dotnet60.dll"]
