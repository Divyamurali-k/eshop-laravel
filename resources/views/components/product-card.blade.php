<div class="card">

    <div id="carousel{{ $product->id }}" class="carousel slide carousel-fade">
        <div class="carousel-inner">
            @foreach ($product->images as $image)
            <div class="carousel-item {{ $loop->first ? 'active': '' }}">
                <img class="d-block w-100 card-img-top" src="{{ asset($image->path) }}" height="500">
            </div>
            @endforeach
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carousel{{ $product->id }}" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>

        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carousel{{ $product->id }}" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>

        </button>
    </div>


    <div class="card-body">
        <h4 class="text-right"><strong>${{$product->price}}</strong></h4>
        <h5 class="card-title">{{$product->title}}</h5>
        <p class="card-text">{{$product->description}}</p>
        <p class="card-text"><strong>{{$product->stock}} left</strong></p>
        @if(isset($cart))
        <p class="card-text">
            {{ $product->pivot->quantity }} in your cart <strong>(${{ $product->total }})</strong>
        </p>
        <form action="{{ route('products.carts.destroy',['product' => $product->id,'cart' => $cart->id]) }}" class="d-line" method="POST">
            @csrf
            @method('DELETE')
            <button class="btn btn-warning" type="submit">Remove from cart</button>
        </form>
        @else
        <form action="{{ route('products.carts.store',['product' => $product->id]) }}" class="d-line" method="POST">
            @csrf
            <button class="btn btn-success" type="submit">Add to cart</button>
        </form>
        @endif
    </div>
</div>

</div>