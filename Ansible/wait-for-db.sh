#!/bin/bash
# wait-for-db.sh
echo "Waiting for database..."
until pg_isready -h "$DB_HOST" -p 5432 -U "$DB_USER"; do
  sleep 2
done
echo "Database is ready!"
exec "$@"