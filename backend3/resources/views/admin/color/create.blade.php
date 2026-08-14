    @extends('layouts.adminlayout')
    @section('title')
        Create
    @endsection
    @section('content')
        <main class="p-4">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 card mb-4">
                        <div class="p-3">
                            <div class="col-md-4 mb-3">
                                <div class="mb-3">
                                    <h3>Add Color</h3>
                                    <hr>
                                </div>
                                <form action="{{ route('admin.color.store') }}" method="post">
                                    @csrf
                                    <div class="mb-3">
                                        <label for="" class="form-label">Name:</label>
                                        <input type="text" class="form-control @error('name') is-invalid @enderror"
                                            name="name" placeholder="Please enter name*" value="{{ old('name') }}" />
                                        @error('name')
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="mb-3 text-end">
                                        <button type="submit" class="btn btn-success btn-sm">
                                            <i class="bi bi-plus"></i> Add
                                        </button>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </main>
    @endsection
