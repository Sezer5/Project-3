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
                    <div class="col-md-4 mt-2">
                        <table class="table table-responsive table-bordered text-center">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Slug</th>
                                    <th>Name</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($products as $product)
                                    <tr>
                                        <td>{{ $product->id }}</td>
                                        <td>{{ $product->slug }}</td>
                                        <td>{{ $product->name }}</td>
                                        <td>
                                            <a href="{{ route('admin.product.edit', $product->slug) }}"
                                                class="btn btn-warning btn-sm">
                                                <i class="bi bi-wrench"></i>
                                            </a>
                                        </td>
                                        <td>
                                            <a href="#" onclick="deleteItem({{ $product->id }})"
                                                class="btn btn-danger btn-sm">
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
