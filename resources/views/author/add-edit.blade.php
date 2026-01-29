@extends('admin.layouts.app')

@section('content')
    <div class="mt-4">
        <div class="card">
            <div class="card-header">
                <div class="gap-2 align-items-center no-h4-0 h4">
                    {!! back_button($back ?? '') !!}
                    <h4>{{ $title ?? '-' }}</h4>
                </div>
            </div>
            <div class="card-body">
                <form id="addEditAuthorForm" action="{{ route('admin.author.save') }}" autocomplete="off">
                    <div class="row">
                        <input type="hidden" name="id" value="{{ $author?->id ?? '' }}">
                        <span class="error id_error"></span>
                    </div>
                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <label for="name" class="form-label">Name <span class="mendatory">*</span></label>
                            <input type="text" id="name" name="name" class="form-control"
                                value="{{ $author?->name ?? '' }}">
                            <span class="error name_error"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <label for="slug" class="form-label">Slug <span class="mendatory">*</span></label>
                            <input type="text" id="slug" name="slug" class="form-control"
                                value="{{ $author?->slug ?? '' }}">
                            <span class="error slug_error"></span>
                        </div>
                    </div>
                    <div class="my-2">
                        <strong>SEO Section</strong>
                    </div>
                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <label for="meta_title" class="form-label">Meta Title</label>
                            <textarea name="meta_title" id="meta_title" rows="5" class="form-control">{{ $author?->meta_title ?? '' }}</textarea>
                            <span class="error meta_title_error"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <label for="meta_description" class="form-label">Meta Description</label>
                            <textarea name="meta_description" id="meta_description" rows="5" class="form-control">{{ $author?->meta_description ?? '' }}</textarea>
                            <span class="error meta_description_error"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <label for="meta_keywords" class="form-label">Meta Keywords</label>
                            <textarea name="meta_keywords" id="meta_keywords" rows="5" class="form-control">{{ $author?->meta_keywords ?? '' }}</textarea>
                            <span class="error meta_keywords_error"></span>
                        </div>
                    </div>

                    <div class="my-2">
                        <strong>Extra Scripts</strong>
                    </div>
                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <label for="header_script" class="form-label">Header Script <small>(This script will be injected
                                    in the header of this author)</small></label>
                            <textarea name="header_script" id="header_script" rows="5" class="form-control">{{ $author?->header_script ?? '' }}</textarea>
                            <span class="error header_script_error"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <label for="body_script" class="form-label">Body Script <small>(This script will be injected
                                    in the body of this author)</small></label>
                            <textarea name="body_script" id="body_script" rows="5" class="form-control">{{ $author?->body_script ?? '' }}</textarea>
                            <span class="error body_script_error"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <label for="footer_script" class="form-label">Footer Script <small>(This script will be
                                    injected
                                    in the footer of this author)</small></label>
                            <textarea name="footer_script" id="footer_script" rows="5" class="form-control">{{ $author?->footer_script ?? '' }}</textarea>
                            <span class="error footer_script_error"></span>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary mt-2">Submit</button>
                </form>
            </div>
        </div>
    </div>
@endsection

@push('js')
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            $('#addEditAuthorForm').on('submit', function(e) {
                e.preventDefault();
                const form = $(this);
                let formData = new FormData(e.target);
                $.ajax({
                    url: e.target.action,
                    type: 'POST',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function(res) {
                        if (res.success) {
                            window.location.href = res.redirect;
                        } else {
                            if (res.errors) {
                                showValidationErrors(res.errors);
                            } else {
                                showAlert('', res.msg || 'Something went wrong!', 'error');
                            }
                        }
                    },
                    beforeSend: function() {
                        $('.error').empty();
                        form.find('button[type="submit"]').addClass('disabled')
                        form.find('button[type="submit"]').html('Please wait...');
                    },
                    complete: function() {
                        form.find('button[type="submit"]').removeClass('disabled');
                        form.find('button[type="submit"]').html('Submit');
                    },
                    error: function() {
                        showAlert('', 'Something went wrong!', 'error');
                    }
                });
            });

            $('input[name="name"]').on('blur', function() {
                checkSlugExists("{{ route('admin.check.slug.availability') }}", {
                    name: $(this).val(),
                    table: 'authors',
                    exclude_id: "{{ $author?->id ?? '' }}"
                });
            });
        });
    </script>
@endpush
