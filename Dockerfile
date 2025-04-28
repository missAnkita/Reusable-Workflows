# Use the ASP.NET Core runtime image (no SDK needed)
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app

# Copy prebuilt Blazor application from GitHub Actions workflow
# COPY ./output /app
COPY . /app   

# Expose port 80
EXPOSE 80

# Set the entry point
ENTRYPOINT ["dotnet", "dotnetapp.dll"]