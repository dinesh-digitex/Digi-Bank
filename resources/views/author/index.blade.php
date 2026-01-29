@extends('admin.layouts.app')

@section('content')
    <div class="mt-4">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="mb-0">Authors</h4>
                    @if (in_array('add', $allowedAction))
                        <a href="{{ route('admin.author.create') }}" class="btn btn-success">
                            Add New
                        </a>
                    @endif
                </div>

                <div class="form-wrapper d-flex justify-content-end">
                    <form id="searchForm" class="d-flex" method="GET" action="{{ route('admin.author.index') }}">
                        <input type="text" name="keyword" id="search" class="form-control me-2"
                            placeholder="Search by name or slug" value="{{ request('keyword') }}">
                        <button type="submit" class="btn btn-primary me-2">Search</button>
                        @if (!empty(request()->keyword))
                            <a href="{{ route('admin.author.index') }}" type="button" id="clearBtn"
                                class="btn btn-warning me-2">Clear</a>
                        @endif
                    </form>
                </div>
            </div>

            <div class="card-body table-responsive">
                <table class="table table-striped table-hover table-bordered">
                    <thead class="">
                        <tr>
                            <th>Name</th>
                            <th>Slug</th>
                            <th>Posts</th>
                            @if (in_array('edit', $allowedAction) || in_array('delete', $allowedAction))
                                <th class="text-center">Action</th>
                            @endif
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($authors as $author)
                            <tr>
                                <td style="width: 30%;">{{ $author->name }}</td>
                                <td style="width: 30%;">{{ $author->slug }}</td>
                                <td style="width: 20%;">{{ $author->total_posts }}</td>
                                @if (in_array('edit', $allowedAction) || in_array('delete', $allowedAction))
                                    <td style="width: 20%;">
                                        <div class="d-flex h-100 justify-content-center gap-2">
                                            @if (in_array('edit', $allowedAction))
                                                <a href="{{ route('admin.author.edit', ['id' => $author->id]) }}"
                                                    class="btn btn-sm btn-warning">
                                                    Edit
                                                </a>
                                            @endif
                                            @if (in_array('delete', $allowedAction))
                                                <a href="javascript:void(0);"
                                                    data-href="{{ route('admin.author.delete', ['id' => $author->id]) }}"
                                                    class="btn btn-sm btn-danger deleteItem">
                                                    Delete
                                                </a>
                                            @endif
                                        </div>
                                    </td>
                                @endif
                            </tr>
                        @empty
                            <tr>
                                <td colspan="4" class="text-center">No authors found.</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>

                <div class="mt-3">
                    {{ $authors->appends(request()->all())->links('pagination::bootstrap-5') }}
                </div>
            </div>
        </div>
    </div>
@endsection

@push('js')
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            $('.deleteItem').on('click', function() {
                let url = $(this).data('href');
                Swal.fire({
                    title: "Are you sure you want to delete this author?",
                    showCancelButton: true,
                    confirmButtonText: "Yes",
                    cancelButtonText: "No",
                    icon: 'warning',
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = url;
                    }
                });
            });
        });
    </script>
@endpush
