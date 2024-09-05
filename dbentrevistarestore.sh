#fazendo restaução da database dbentrevista a partir do dump

#variaveis
DB_NAME="dbentrevista_restore"
DB_USER="postgres"

#fazendo restoraução
pg_restore -U postgres -d DB_NAME < dbentrevista.sql