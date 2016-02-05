<?php
/**
 * Created by IntelliJ IDEA.
 * User: max
 * Date: 05-Feb-16
 * Time: 22:21
 */
namespace database\orm;

use core\Config;

class Query
{
    /**
     * @var String
     */
    protected $modelName;

    public function __construct($modelName)
    {
        $this->modelName = $modelName;
    }

    public function where($field, $operator = "=", $value){

    }

    public function run(){
        $handler = Config::get("database.handler");
    }

    public static function find($modelName){
        return new Query($modelName);
    }
}