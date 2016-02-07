<?php

/**
 * Created by IntelliJ IDEA.
 * User: max
 * Date: 26-Jan-16
 * Time: 21:47
 */

use \database\orm\Column;

class IndexModel extends core\database\BaseModel
{

    private $title;
    private $text;

    public function __construct()
    {
        parent::__construct();

        $this->table->addColumn(new Column("title",Column::STRING));
        $this->table->addColumn(new Column("text",Column::TEXT));
    }

    public function setTitle($title){
        $this->title = $title;
    }

    public function getTitle(){
        return $this->title;
    }

    public function setText($text){
        $this->text = $text;
    }

    public function getText(){

    }
    
}