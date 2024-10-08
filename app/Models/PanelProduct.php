<?php

namespace App\Models;

use App\Models\Product;

class PanelProduct extends Product
{

    /**
     * The "booted" method of the model.
     *
     * @return void
     */
    protected static function booted()
    {
        // static::addGlobalScope();
    }
    public function getForeignkey()
    {
        $parent=get_parent_class($this);
        return (new $parent)->getForeignkey();
    }
    public function getMorphClass()
    {
        $parent=get_parent_class($this);
        return (new $parent)->getMorphClass();
    }
}
