# Wait to be sure that SQL Server came up
# Run the setup script to create the DB and the schema in the DB
sleep 30s && /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Password1234 -d master -i /scripts/setup-db.sql