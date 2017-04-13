FROM microsoft/dotnet:1.0.0-preview2-sdk


MAINTAINER click2cloud.inc
# Install the application
ADD . /app
 
RUN dotnet restore

ENV ASPNETCORE_URLS http://*:80
EXPOSE 80
# Define command to run the application when the container starts
CMD ["microsoft/dotnet:1.0.0-preview2-sdk", "dotnet run"] 
