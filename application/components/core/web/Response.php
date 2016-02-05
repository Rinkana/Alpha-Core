<?php
/**
 * Created by IntelliJ IDEA.
 * User: max
 * Date: 03-Feb-16
 * Time: 22:19
 */

namespace core\web;


class Response
{

    protected $headers = [];
    protected $messageBody = "";

    const HEADER_404 = "HTTP/1.0 404 Not Found";

    public function setMessageBody($data)
    {
        $this->messageBody = $data;
    }

    public function addHeader($header){
        $this->headers[] = $header;
    }

    public function sendHeaders(){
        foreach($this->headers as $header){
            header($header);
        }
    }

    public function send()
    {
        echo $this->messageBody;
    }

    /**
     * There was no response found. So we set a default body and
     *
     * @todo: ability to create your own not found page.
     */
    public function notFound()
    {
        $this->addHeader(self::HEADER_404);

        $this->setMessageBody("<h1>Page not found</h1>");
    }
}