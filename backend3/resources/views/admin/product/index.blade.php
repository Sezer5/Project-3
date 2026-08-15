    @extends('layouts.adminlayout')
    @section('title')
        product
    @endsection
    @section('content')
        <main class="p-4">
            <div class="container-fluid">
                <h2 class="mb-4 fw-bold">Control Panel</h2>
                <div class="card p-4">
                    <a href="{{ route('admin.product.create') }}">
                        <button class="btn btn-success btn-sm">
                            <i class="bi bi-plus"></i> Add
                        </button>
                    </a>
                    <div class="col-md-12 mt-2">
                        <table class="table">
                            <thead>
                                <tr>
                                    <td>#</td>
                                    <td>Thumbnail</td>
                                    <td>Name</td>
                                    <td>Slug</td>

                                    <td>Colors</td>
                                    <td>Sizes</td>
                                    <td>Qty</td>
                                    <td>Price</td>
                                    <td>Images</td>

                                    <td></td>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($products as $key => $product)
                                    <tr>
                                        <td>{{ $key += 1 }}</td>
                                        <td><img src="{{ asset($product->thumbnail) }}" width="30"></td>
                                        <td>{{ $product->name }}</td>
                                        <td>{{ $product->slug }}</td>


                                        <td>
                                            @foreach ($product->colors as $color)
                                                <span class="badge bg-light text-dark">{{ $color->name }}</span>
                                            @endforeach
                                        </td>
                                        <td>
                                            @foreach ($product->sizes as $size)
                                                <span class="badge bg-light text-dark">{{ $size->name }}</span>
                                            @endforeach
                                        </td>
                                        <td>{{ $product->quantity }}</td>
                                        <td>{{ $product->price }}</td>


                                        <td>
                                            <a href="{{ route('admin.product.edit', $product->slug) }}"
                                                class="btn btn-sm btn-warning">
                                                <i class="bi bi-pencil"></i>
                                            </a>
                                            <a href="#" onclick="deleteItem({{ $product->id }})"
                                                class="btn btn-sm btn-danger">
                                                <i class="bi bi-trash"></i>
                                            </a>
                                            <form id="{{ $product->id }}"
                                                action="{{ route('admin.product.destroy', $product->slug) }}"
                                                method="post">
                                                @csrf
                                                @method('DELETE')
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
    @endsection
