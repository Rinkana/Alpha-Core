<?php
/** @var core\web\View $this */
?>
<h1>Setup successful!</h1>
<?php
if($this->get("page")){
    echo "Page: ".$this->get("page");
}
?>