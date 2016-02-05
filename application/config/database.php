<?php
return [
    "handler" => database\orm\handlers\Sqlite::class,
    "mysql" => array(
        "username" => "root",
        "password" => "",
        "host" => "localhost",
        "database" => "test"
    ),
    "sqlite" => array(
        "database" => ROOT."application/database/database.sqlite"
    )
];