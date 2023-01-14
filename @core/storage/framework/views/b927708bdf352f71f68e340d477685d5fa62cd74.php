<?php $__env->startSection('site-title'); ?>
<?php if($category !=''): ?>
<?php echo e($category->name); ?>

<?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('page-title'); ?>
<?php if($category !=''): ?>
<?php echo e($category->name); ?>

<?php endif; ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-meta-data'); ?>
    <?php echo render_site_title($category->name); ?>

    <meta name="title" content="<?php echo e($category->name); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('inner-title'); ?>

<?php if($category !=''): ?>
<?php echo e($category->name); ?>

<?php endif; ?>

<?php $__env->stopSection(); ?> 

<?php $__env->startSection('content'); ?>
    <section class="category-services-area padding-top-70 padding-bottom-100">
        <div class="container">
            <div class="mb-4">
                <div class="col-lg-12">
                    <h2 class="section-sub-title"><?php echo e(sprintf(__('Available Service Categories in %s'),$category->name)); ?></h2>
                </div>
              
              <div id="services_sub_category_load_wrap">
                <div class="row">
                <?php $__currentLoopData = $subcategory_under_category; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub_cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-lg-3 col-sm-6 margin-top-30 category-child">
                        <div class="single-category style-02 wow fadeInUp" data-wow-delay=".2s">
                            <div class="icon category-bg-thumb-format" <?php echo render_background_image_markup_by_attachment_id($sub_cat->image); ?>></div>
                            <div class="category-contents">
                                <h4 class="category-title"> <a href="<?php echo e(route('service.list.subcategory',$sub_cat->slug)); ?>"><?php echo e($sub_cat->name); ?></a> </h4>
                                <span class="category-para">  <?php echo e(sprintf(__('%s Service'),$sub_cat->total_service)); ?> </span>
                            </div>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
               </div>
           <div class="load_more_button_warp"><a href="#" id="load_more_btn" data-total="12"><?php echo e(__('Load More')); ?></a></div>
          </div>
          </div>
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="section-sub-title margin-top-80"><?php echo e(sprintf(__('Available Services in %s'),$category->name)); ?></h2>
                    <?php $current_page_url = URL::current(); ?>
                    <div class="category-service-search-form margin-top-50">
                        <form method="get" action="<?php echo e($current_page_url); ?>" id="search_service_list_form">
                        <div class="row">
                            <div class="col-lg-4 col-sm-4">
                               <div class="form-group">
                                   <input type="text" class="search-input form-control" id="search_by_query" placeholder="<?php echo e(__('write minimum 3 character to search')); ?>" name="q" value="<?php echo e(request()->get('q')); ?>">
                               </div>
                            </div>
                            <div class="col-lg-4 col-sm-6">
                                <div class="single-category-service">
                                    <div class="single-select">
                                        <select id="search_by_rating" name="rating">
                                            <option value=""><?php echo e(__('Select Rating Star')); ?></option>
                                            <option value="1" <?php if(!empty(request()->get('rating')) && request()->get('rating') == 1 ): ?> selected <?php endif; ?>><?php echo e(__('One Star')); ?></option>
                                            <option value="2" <?php if(!empty(request()->get('rating')) && request()->get('rating') == 2 ): ?> selected <?php endif; ?>><?php echo e(__('Two Star')); ?></option>
                                            <option value="3" <?php if(!empty(request()->get('rating')) && request()->get('rating') == 3 ): ?> selected <?php endif; ?>><?php echo e(__('Three Star')); ?></option>
                                            <option value="4" <?php if(!empty(request()->get('rating')) && request()->get('rating') == 4 ): ?> selected <?php endif; ?>><?php echo e(__('Four Star')); ?></option>
                                            <option value="5" <?php if(!empty(request()->get('rating')) && request()->get('rating') == 5 ): ?> selected <?php endif; ?>><?php echo e(__('Five Star')); ?></option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-sm-6">
                                <div class="single-category-service flex-category-service">
                                    <div class="single-select">
                                        <select id="search_by_sorting" name="sortby">
                                            <option value=""><?php echo e(__('Sort By')); ?></option>
                                            <option value="latest_service" <?php if(!empty(request()->get('sortby')) && request()->get('sortby') == 'latest_service'): ?> selected <?php endif; ?>><?php echo e(__('Latest Service')); ?></option>
                                            <option value="lowest_price" <?php if(!empty(request()->get('sortby')) && request()->get('sortby') == 'lowest_price'): ?> selected <?php endif; ?>><?php echo e(__('Lowest Price')); ?></option>
                                            <option value="highest_price" <?php if(!empty(request()->get('sortby')) && request()->get('sortby') == 'highest_price'): ?> selected <?php endif; ?>><?php echo e(__('Highest Price')); ?></option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
        
                    </form>
                    </div>
                </div>
                <?php if($all_services->count() >= 1): ?>
                    <?php $__currentLoopData = $all_services; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $service): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        
                        <div class="col-lg-4 col-md-6 margin-top-30 all-services">
                            <div class="single-service no-margin wow fadeInUp" data-wow-delay=".2s">
                                <a href="<?php echo e(route('service.list.details',$service->slug)); ?>" class="service-thumb service-bg-thumb-format" <?php echo render_background_image_markup_by_attachment_id($service->image); ?>>

                                    <?php if($service->featured == 1): ?>
                                    <div class="award-icons">
                                        <i class="las la-award"></i>
                                    </div>
                                    <?php endif; ?>
                                    <div class="country_city_location">
                                        <span class="single_location"> <i class="las la-map-marker-alt"></i> <?php echo e(optional($service->serviceCity)->service_city); ?>, <?php echo e(optional(optional($service->serviceCity)->countryy)->country); ?> </span>
                                    </div>
                                </a>
                                <div class="services-contents">
                                    <ul class="author-tag">
                                        <li class="tag-list">
                                            <a href="<?php echo e(route('about.seller.profile',optional($service->seller)->username)); ?>">
                                                <div class="authors">
                                                    <div class="thumb">
                                                        <?php echo render_image_markup_by_attachment_id(optional($service->seller)->image); ?>

                                                        <span class="notification-dot"></span>
                                                    </div>
                                                    <span class="author-title"> <?php echo e(optional($service->seller)->name); ?> </span>
                                                </div>
                                            </a>
                                        </li>
                                        <?php if($service->reviews->count() >= 1): ?>
                                        <li class="tag-list">
                                            <a href="javascript:void(0)">
                                                <span class="reviews">
                                                    <?php echo ratting_star(round(optional($service->reviews)->avg('rating'),1)); ?>

                                                    (<?php echo e(optional($service->reviews)->count()); ?>)
                                                </span>
                                            </a>
                                        </li>
                                        <?php endif; ?>
                                    </ul>
                                    <h5 class="common-title"> <a href="<?php echo e(route('service.list.details',$service->slug)); ?>"> <?php echo e(Str::limit($service->title)); ?> </a> </h5>
                                    <p class="common-para"> <?php echo e(Str::limit(strip_tags($service->description),100)); ?> </p>
                                    <div class="service-price">
                                        <span class="starting"> <?php echo e(__('Starting at')); ?> </span>
                                        <span class="prices"> <?php echo e(amount_with_currency_symbol($service->price)); ?> </span>
                                    </div>
                                    <div class="btn-wrapper d-flex flex-wrap">
                                        <a href="<?php echo e(route('service.list.book',$service->slug)); ?>" class="cmn-btn btn-small btn-bg-1"> <?php echo e(__('Book Now')); ?> </a>
                                        <a href="<?php echo e(route('service.list.details',$service->slug)); ?>" class="cmn-btn btn-small btn-outline-1 ml-auto"> <?php echo e(__('View Details')); ?> </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php if($all_services->count() >= 9): ?>
                        <div class="col-lg-12">
                            <div class="blog-pagination margin-top-55">
                                <div class="custom-pagination mt-4 mt-lg-5">
                                    <?php echo $all_services->links(); ?>

                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                <?php else: ?> 
                    <div class="alert alert-warning"><?php echo e(sprintf(__('No services found in %s'),optional($category)->name)); ?></div>
                <?php endif; ?>

            </div>

        </div>
    </section>

<?php $__env->stopSection(); ?>
<?php $__env->startSection("scripts"); ?>
      <script>
      	(function($){
          "use strict";
          
          $(document).on('click','#load_more_btn',function(e){
            e.preventDefault();
            
            let totalNo = $(this).data('total');
            let el = $(this);
            let container = $('#services_sub_category_load_wrap > .row');
            
            $.ajax({
              type: "POST",
              url: "<?php echo e(route('service.list.load.more.subcategories')); ?>",
              beforeSend: function(e){
                el.text("<?php echo e(__('loading...')); ?>")
              },
              data : {
                _token: "<?php echo e(csrf_token()); ?>",
                total: totalNo,
                catId: "<?php echo e($category->id); ?>"
              },
              success: function(data){
                
                 el.text("<?php echo e(__('Load More')); ?>");
                if(data.markup === ''){
                  el.hide();
                  container.append("<div class='col-lg-12'><div class='text-center text-warning mt-3'><?php echo e(__('no more subcategory found')); ?></div></div>"); 
                  return;
                }
                
                $('#load_more_btn').data('total',data.total);
                 
                container.append(data.markup); 
              }
            });
            
          });
          
          
        })(jQuery);
      
      </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/resources/views/frontend/pages/services/category-services.blade.php ENDPATH**/ ?>