<?php
namespace App\Components;

class Recusive {
    
    private $data;
    private $select = '';

    public function __construct($data)
    {
        $this->data = $data;
    }

    public function recusiveCategory($id = 0, $text = '')
    {
        foreach($this->data as $value)
        {
            if($value['parent_id'] == $id)
            {
                $this->select .= "<option>".$text.$value['name']."</option>";
                $this->recusiveCategory($value['id'], $text."--");
            }
        }
        return $this->select;
    }
}