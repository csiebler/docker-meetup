# Scripts for Docker Meetup Demos


Create table for testing:
`docker exec -it mysql mysql -u root -p"secret" -e "CREATE DATABASE netapp; USE netapp; CREATE TABLE employees (id INT, name VARCHAR(20)); INSERT INTO employees (id, name) VALUES(1, \"Clemens\"); SELECT * FROM employees;"`

Show table contents:
`docker exec -it mysql10 mysql -u root -p"secret" -e "SELECT * FROM employees;" netapp`
