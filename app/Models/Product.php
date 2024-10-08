<?php

namespace App\Models;

use App\Models\Order;
use App\Models\Cart;
use App\Models\Image;
use App\Scopes\AvailableScope;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    protected $table='products'; //take table as products
    protected $with=[
        'images',
    ];
    use HasFactory;
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'title',
        'description',
        'price',
        'stock',
        'status',
    ];

    /**
     * The "booted" method of the model.
     *
     * @return void
     */
    protected static function booted()
    {
        static::addGlobalScope(new AvailableScope);
        static:: updated (function($product) {
            if ($product->stock == 0 && $product->status =='available') {
            $product->status = 'unavailable';
            $product->save();
            }
        });
    }

    public function carts()
    {
        return $this->morphedByMany(Cart::class, 'productable')->withPivot('quantity');
    }
    public function orders()
    {
        return $this->morphedByMany(Order::class, 'productable')->withPivot('quantity');
    }
    public function images()
    {
        return $this->morphMany(Image::class, 'imageable');
    }
    public function scopeAvailable($query)
    {
        return $query->where('status', 'available');
    }
    public function getTotalAttribute()
    {
        return $this->price * $this->pivot->quantity;
    }
}
