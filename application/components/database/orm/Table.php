<?php
/**
 * Created by IntelliJ IDEA.
 * User: max
 * Date: 07-Feb-16
 * Time: 12:29
 */

namespace database\orm;


class Table
{
    private $columns;

    private $name;

    public function __construct($name)
    {
        $this->setName($name);
    }

    public function setName($name){
        $this->name = $name;
    }

    public function createColumn($name, $type){

        $this->columns[$name] = new Column($name, $type);
    }

    public function addColumn(Column $column){
        $this->columns[$column->getName()] = $column;
    }

    public function getColumn($name){
        return $this->columns[$name];
    }

    public function getColumns(){
        return $this->columns;
    }
}