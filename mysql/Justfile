exec:
  # Enter MySQL shell.
  mysql -u root --socket ./data/mysql.sock

init:
  # Initialize MySQL without root password.
  mysqld --initialize-insecure --datadir ./data

start:
  # Start MySQL server.
  mysqld --datadir ./data --socket ./mysql.sock &

stop:
  # Stop MySQL server.
  mysqladmin -u root --socket ./data/mysql.sock shutdown
