# Start a minimal mssql server
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=StrongPassword!" -p 1433:1433 -d mcr.microsoft.com/mssql/server:2022-latest

