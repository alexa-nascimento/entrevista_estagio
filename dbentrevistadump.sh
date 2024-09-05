#dump do banco de dados dbentrevista;

#variaveis
DB_NAME="dbentrevista"
DUMP_FILE="dbentrevista.sql"

#fazendo o dump
sudo pg_dump -U postgres $DB_NAME > $DUMP_FILE

echo "dump finalizado"