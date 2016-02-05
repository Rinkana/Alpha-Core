<?php
/**
 * Created by IntelliJ IDEA.
 * User: max
 * Date: 19-Dec-15
 * Time: 16:39
 */

namespace core;

use core\routing\RouteNotFoundException;
use core\routing\Router;
use core\web\Request;
use core\web\Response;

class Kernel
{
    /**
     * @var Request
     */
    protected $request;
    /**
     * @var Response
     */
    protected $response;

    public function __construct()
    {
        //Setup extra autoloader.

        new Autoloader(Config::get("autoloader"));

        $this->setVars();

        $this->run();
    }

    /**
     * Set the core requred vars
     */
    protected function setVars()
    {

        $this->request = new Request();
        $this->response = new Response();

    }

    /**
     * Init done? Continue to the deeper layers for the output.
     */
    protected function run()
    {
        $router = new Router();

        try{
            $responseData = $router->route($this->request);

            $this->response->setMessageBody($responseData);
        }catch(RouteNotFoundException $e){
            $this->response->notFound();
        }

    }

    /**
     * @return Response
     */
    public function getResponse()
    {
        return $this->response;
    }
}