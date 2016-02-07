<?php
/**
 * Created by IntelliJ IDEA.
 * User: max
 * Date: 20-Dec-15
 * Time: 17:09
 */

namespace core\database;

use database\orm\Table;
use database\orm\Column;

/**
 * Class BaseModel
 * @package database
 *
 * The model is just a representation of a database table/row
 */
abstract class BaseModel
{

    /**
     * @var Table
     */
    protected $table;

    /**
     * @var int
     */
    protected $id;

    /**
     * @var string
     */
    protected $created_at;

    /**
     * @var string
     */
    protected $updated_at;

    /**
     * BaseModel constructor.
     * Create the basic table schema
     */
    public function __construct()
    {
        $this->table = new Table(str_replace("Model", "", get_class($this)));

        $this->table->addColumn(new Column("id", Column::INCREMENTS));
        $this->table->addColumn(new Column("created_at", Column::TIMESTAMP));
        $this->table->addColumn(new Column("updated_at", Column::TIMESTAMP));
    }

    /**
     * @return int
     */
    public function getID()
    {
        return $this->id;
    }

    /**
     * @param int $id
     */
    public function setID($id)
    {
        $this->id = $id;
    }

    /**
     * @return string
     */
    public function getCreated()
    {
        return $this->created_at;
    }

    /**
     * @return string
     */
    public function getUpdated()
    {
        return $this->updated_at;
    }

    /**
     * @return array
     */
    public function getFields()
    {
        return get_object_vars($this);
    }

    /**
     * @return Table
     */
    public function getTable(){
        return $this->table;
    }
}