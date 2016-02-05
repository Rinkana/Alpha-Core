<?php

/**
 * Created by IntelliJ IDEA.
 * User: max
 * Date: 19-Dec-15
 * Time: 17:53
 */
use core\routing\BaseController;

class IndexController extends BaseController
{
    public function index($page = ""){

        var_dump($page);

        return $this->renderView();

    }
}