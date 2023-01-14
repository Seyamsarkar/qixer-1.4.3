@extends('backend.admin-master')

@section('site-title')
    {{__('Add New Child Category')}}
@endsection
@section('style')
    <x-media.css/>
@endsection
@section('content')
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12">
                <div class="margin-top-40"></div>
                <x-msg.success/>
                <x-msg.error/>
            </div>
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <div class="header-wrap d-flex justify-content-between">
                            <div class="left-content">
                                <h4 class="header-title">{{__('Add New Child Category')}}   </h4>
                            </div>
                            <div class="right-content">
                                <a class="btn btn-info btn-sm" href="{{route('admin.child.category')}}">{{__('All Child Categories')}}</a>
                            </div>
                        </div>
                        <form action="{{route('admin.child.category.new')}}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="tab-content margin-top-40">
                                
                                <div class="form-group">
                                    <label for="category" class="info-title"> {{__('Select Parent Category*')}} </label>
                                    <select name="category_id" id="category" class="form-control">
                                        <option value="">{{__('Select Category')}}</option>
                                        @foreach($categories as $cat)
                                            <option value="{{ $cat->id }}">{{ $cat->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="subcategory" class="info-title"> {{__('Select Sub Category*')}} </label>
                                    <select  name="sub_category_id" id="subcategory" class="form-control subcategory"></select>
                                </div>

                                <div class="form-group">
                                    <label for="name">{{__('Child Category')}}</label>
                                    <input type="text" class="form-control" name="name" id="name" placeholder="{{__('Child Category')}}">
                                </div>
                                <div class="form-group permalink_label">
                                    <label class="text-dark">{{__('Permalink * : ')}}
                                        <span id="slug_show" class="display-inline"></span>
                                        <span id="slug_edit" class="display-inline">
                                             <button class="btn btn-warning btn-sm slug_edit_button"> <i class="fas fa-edit"></i> </button>
                                            <input type="text" name="slug" class="form-control subcategory_slug mt-2" style="display: none">
                                              <button class="btn btn-info btn-sm slug_update_button mt-2" style="display: none">{{__('Update')}}</button>
                                        </span>
                                    </label>
                                </div>

                                <div class="form-group">
                                    <label for="image">{{__('Upload Child Category Image')}}</label>
                                    <div class="media-upload-btn-wrapper">
                                        <div class="img-wrap"></div>
                                        <input type="hidden" name="image">
                                        <button type="button" class="btn btn-info media_upload_form_btn"
                                                data-btntitle="{{__('Select Image')}}"
                                                data-modaltitle="{{__('Upload Image')}}" data-toggle="modal"
                                                data-target="#media_upload_modal">
                                            {{__('Upload Image')}}
                                        </button>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary mt-3 submit_btn">{{__('Submit ')}}</button>
                            </div>
                        </form>
                   </div>
                </div>
            </div>
        </div>
    </div>
    <x-media.markup/>
@endsection

@section('script')
 <x-media.js />

 <script>
    (function ($) {
        "use strict";

        $(document).ready(function () {
            //Permalink Code
            $('.permalink_label').hide();
            $(document).on('keyup', '#name', function (e) {
                var slug = converToSlug($(this).val());
                var url = "{{url('/subcategory/')}}/" + slug;
                $('.permalink_label').show();
                var data = $('#slug_show').text(url).css('color', 'blue');
                $('.subcategory_slug').val(slug);

            });

             function converToSlug(slug){
               let finalSlug = slug.replace(/[^a-zA-Z0-9]/g, ' ');
                //remove multiple space to single
                finalSlug = slug.replace(/  +/g, ' ');
                // remove all white spaces single or multiple spaces
                finalSlug = slug.replace(/\s/g, '-').toLowerCase().replace(/[^\w-]+/g, '-');
                return finalSlug;
            }

            //Slug Edit Code
            $(document).on('click', '.slug_edit_button', function (e) {
                e.preventDefault();
                $('.subcategory_slug').show();
                $(this).hide();
                $('.slug_update_button').show();
            });

            //Slug Update Code
            $(document).on('click', '.slug_update_button', function (e) {
                e.preventDefault();
                $(this).hide();
                $('.slug_edit_button').show();
                var update_input = $('.subcategory_slug').val();
                var slug = converToSlug(update_input);
                var url = `{{url('/subcategory/')}}/` + slug;
                $('#slug_show').text(url);
                $('.subcategory_slug').val(slug);
                $('.subcategory_slug').hide();
            });

            // select category, sub category and Child Category
            $('#category').on('change',function(){
                var category_id = $(this).val();
                $.ajax({
                    method:'post',
                    url:"{{route('admin.select.subcategory')}}",
                    data:{category_id:category_id},
                    success:function(res){
                        if(res.status=='success'){
                            var alloptions = '';
                            var allSubCategory = res.sub_categories;
                            $.each(allSubCategory,function(index,value){
                                alloptions +="<option value='" + value.id + "'>" + value.name + "</option>";
                            });
                            $(".subcategory").html(alloptions);
                            $('#subcategory').niceSelect('update');
                        }
                    }
                })
            })
        });
    })(jQuery)
</script>
@endsection 

