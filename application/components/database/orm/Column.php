<?php
/**
 * Created by IntelliJ IDEA.
 * User: max
 * Date: 07-Feb-16
 * Time: 12:30
 */

namespace database\orm;


class Column
{
    const INCREMENTS = "increments";

    const INTEGER = "integer";
    const LONG = "long";
    const SHORT = "short";
    const FLOAT = "float";
    const DOUBLE = "double";
    const BOOLEAN = "boolean";
    const STRING = "string";
    const TEXT = "text";

    const TIMESTAMP = "timestamp";
    const DATE = "date";
    const TIME = "time";

    private $name;
    private $type;

    public function __construct($name, $type)
    {
        $this->setName($name);
        $this->setType($type);
    }

    public function setName($name){
        $this->name = $name;
    }

    public function getName(){
        return $this->name;
    }

    public function setType($type){
        $this->type = $type;
    }

    public function getType(){
        return $this->type;
    }
}