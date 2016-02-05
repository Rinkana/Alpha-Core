<?php
/**
 * Created by IntelliJ IDEA.
 * User: max
 * Date: 20-Dec-15
 * Time: 17:09
 */

namespace core\database;

/**
 * Class BaseModel
 * @package database
 *
 * The model is just a representation of a database table/row
 */

abstract class BaseModel
{
    /**
     * @var int
     */
    private $id;

    /**
     * @var string
     */
    private $created;

    /**
     * @var string
     */
    private $updated;


    /*protected $database;
    public final function __construct()
    {
        $this->database = new Database();
    }*/

    public function getFields()
    {
        return get_object_vars($this);
    }
}