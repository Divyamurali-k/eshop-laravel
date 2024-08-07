<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Product;
use App\Services\CartService;
use Illuminate\Validation\ValidationException;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Cookie;

class ProductCartController extends Controller
{

public $cartService;

public function __construct(CartService $cartService)
{
  $this->cartService  = $cartService;
}


    /**add to cart code
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Product $product)
    {
        // $cart = Cart::create();
        $cart = $this->cartService->getFromCookieOrCreate();

        $quantity = $cart->products()
            ->find($product->id)
            ->pivot
            ->quantity ?? 0;
            
        if($product->stock<$quantity+1){
            throw ValidationException::withMessages([
                'cart'=>"There is no enough stock for the quantity you required of {$product->title}",
            ]);
        }

        //attach,sync,syncwithoutdetaching
        $cart->products()->syncWithoutDetaching([
            $product->id => ['quantity' => $quantity + 1],
        ]);
        // return redirect()->back();
        // $cookie = Cookie::make('cart', $cart->id, 7 * 24 * 60);
        $cookie = $this->cartService->makeCookie($cart);
        return redirect()->back()->cookie($cookie);
    }



    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product, Cart $cart)
    {
        $cart->products()->detach ($product->id);
        $cookie =Cookie::make('cart', $cart->id, 7* 24 * 60);
        return redirect()->back()->cookie($cookie);
    }
    
}
