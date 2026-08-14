    @extends('layouts.adminlayout')
    @section('title')
        Add product
    @endsection
    @section('content')
        <main class="p-4">
            <div class="container-fluid">
                <h2 class="mb-4 fw-bold">Add product</h2>
                <div class="card p-4">
                    <div class="col-md-4">
                        <form action="{{ route('admin.product.store') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="mb-3">
                                <label for="" class="form-label">Name</label>
                                <input type="text" class="form-control @error('name') is-invalid @enderror"
                                    name="name" placeholder="Please enter a name" />
                                @error('name')
                                    <span class="invalid-feedback">{{ $message }}</span>
                                @enderror

                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Quantity</label>
                                <input type="number" class="form-control @error('quantity') is-invalid @enderror"
                                    name="quantity" placeholder="Please enter a quantity" min="1" />
                                @error('quantity')
                                    <span class="invalid-feedback">{{ $message }}</span>
                                @enderror

                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Price</label>
                                <input type="text" class="form-control @error('price') is-invalid @enderror"
                                    name="price" placeholder="Please enter a price" min="1" />
                                @error('price')
                                    <span class="invalid-feedback">{{ $message }}</span>
                                @enderror

                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Colors*</label>
                                <select multiple class="form-select form-select-sm" name="color_id[]">
                                    @foreach ($colors as $color)
                                        <option value="{{ $color->id }}"
                                            @if (collect(old('color_id'))->contains($color->id)) selected @endif>{{ $color->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Sizes*</label>
                                <select multiple class="form-select form-select-sm" name="size_id[]">
                                    @foreach ($sizes as $size)
                                        <option value="{{ $size->id }}"
                                            @if (collect(old('size_id'))->contains($size->id)) selected @endif>{{ $size->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Description*</label>
                                <textarea class="form-control" name="description" rows="3"></textarea>
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Thumbnail</label>
                                <input type="file" class="form-control" name="thumbnail" />
                            </div>

                            <div class="mb-3 text-end">
                                <button class="btn btn-success btn-sm" type="submit">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </main>
    @endsection
