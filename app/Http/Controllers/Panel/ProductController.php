<?php

namespace App\Http\Controllers\Panel;

use App\Http\Controllers\Controller;

use App\Http\Requests\ProductRequest;
use App\Models\PanelProduct;
use App\Scopes\AvailableScope;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class ProductController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        // $this->middleware('auth')->only(['index','show']); index and show redirection into login pages
        // $this->middleware('auth')->except(['index','show']); redirection except these pages
    }

    public function index()
    {

        // $products= DB::table('products')->get();
        // $products = Product::all();
        // $products = Product::withoutGlobalScope(AvailableScope::class)->get();
        $products = PanelProduct::without('images')->get();
        // return 'This is list of products from controller';\
        return view('products.index')->with([
            'products' => $products,
            // 'subtitle'=>'<h2>This is a subtitle</h2>',
        ]);
    }

    public function create()
    {

        return view('products.create');
        // return 'A form to create products from controller';
    }
    public function store(ProductRequest $request)
    {
        // dd($request->validated());
        //    $product=Product::create([
        //     'title' => request()->title,
        //     'description' => request()->description,
        //     'price' => request()->price,
        //     'stock' => request()->stock,
        //     'status' => request()->status,
        //    ]);
        // $rules=[
        //    'title' => ['required','max:255'],
        //     'description' => ['required','max:1000'],
        //     'price' => ['required','min:1'],
        //     'stock' => ['required','min:0'],
        //     'status' => ['required','in:available,unavailable'],
        // ];
        // request()->validate($rules);

        // if (request()->stock == 0 && request()->status == 'available') {
        //     // session()->flash('error', 'if available must have stock');
        //     return redirect()
        //         ->back()
        //         ->withInput(request()->all())
        //         ->withErrors('if available must have stock');
        // }
        $product = PanelProduct::create($request->validated());
        // session()->flash('success', "New product with id {$product->id} was created");

        foreach ($request->images as $image) {
            $product->images()->create([
                'path' => 'images/' . $image->store('products', 'images'),
            ]);
        }


        return redirect()
            ->route('products.index')
            ->withSuccess("New product with id {$product->id} was created");
    }


    // public function edit($product)
    // {
    //     return view('products.edit')->with([
    //         'product' => Product::findOrFail($product),
    //     ]);
    // }
    public function edit(PanelProduct $product)
    {
        return view('products.edit')->with([
            'product' => $product,
        ]);
    }

    public function update(ProductRequest $request, PanelProduct $product)
    {

        // dd($request->validated());
        // $product = Product::findOrFail($product);
        $product->update($request->validated());

        if ($request->hasFile('images')) {

            foreach ($product->images as $image) {
                $path = storage_path("app/public/{$image->path}");
                File::delete($path);
                $image->delete();
            }
            foreach ($request->images as $image) {
                $product->images()->create([
                    'path' => 'images/' . $image->store('products', 'images'),
                ]);
            }
        }


        return redirect()
            ->route('products.index')
            ->withSuccess("The product with id {$product->id} was updated");

        // return //redirect
        // redirect()->back();
        // redirect()->action('ProductController@index');
        // return $product;
        //    dd('update');
    }
    public function destroy($product)
    {
        $product = PanelProduct::findOrFail($product);
        $product->delete();

        return redirect()
            ->route('products.index')
            ->withSuccess("The product with id {$product->id} was deleted");
    }

    public function show(PanelProduct $product)
    {
        // $products= Product::where('id',$product)->get();
        // $products= DB::table('products')->where('id',$product)->get();
        // $products= DB::table('products')->where('id',$product)->first();
        // $products= DB::table('products')->find($product);

        // $product = Product::findOrFail($product);
        return view('products.show')->with([
            'product' => $product,
            // 'subtitle'=>'<h2>This is a subtitle</h2>',
        ]);
        // return "showing product {$product}";
    }
}
