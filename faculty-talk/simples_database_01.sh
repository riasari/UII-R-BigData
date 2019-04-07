#!/bin/bash
    db_set () {
        echo "$1,$2" >> database
}
    db_get () {
        grep "^$1," database | sed -e "s/^$1,//" | tail -n 1
}

db_set 123456 '{"name":"Vienna","attractions":["Prater","TU Vienna"]}'
db_set 42 '{"name":"Indonesia","attractions":["Mount Bature"]}'

db_get 42
db_set 42 '{"name":"Indonesia","attractions":["Borobudur Temple"]}'
db_get 42
cat database
