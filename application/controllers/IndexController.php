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

        $this->view->setData("page",$page);

        $model = new IndexModel();
        $reflector = new ReflectionClass('IndexModel');

        var_dump( $model->getTable() );

        return $this->renderView();

    }
}