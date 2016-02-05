<?php

/**
 * Created by IntelliJ IDEA.
 * User: max
 * Date: 05-Feb-16
 * Time: 22:28
 */

namespace database\orm\handlers;

use database\orm\Query;
use HandlerInterface;

class Mysql implements HandlerInterface
{
    public function __construct(Query $query)
    {

    }

    private function sql(){
        $SQL = "SELECT id, updated, created FROM model_page WHERE id = 1";
    }
}