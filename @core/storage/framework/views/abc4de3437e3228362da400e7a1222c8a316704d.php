

<?php $__env->startSection('site-title'); ?>
    <?php echo e($job_details->title); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('page-title'); ?>
    <?php
    $page_info = request()->url();
    $str = explode("/",request()->url());
    $page_info = $str[count($str)-2];
    ?>
    <?php echo e(ucwords(str_replace("-", " ", $page_info))); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('inner-title'); ?>
    <?php echo e($job_details->title); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('page-meta-data'); ?>
    <?php echo render_page_meta_data_for_service($job_details); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/frontend/css/font-awesome.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/frontend/css/job-post.css')); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <!-- Job Details area starts -->
    <div class="apply-job-area-wrapper inner-page-wrapper" data-padding-top="100" data-padding-bottom="100">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="apply-job-inner-area">
                        <div class="inner-content">
                            <div class="img-box">
                                <?php echo render_image_markup_by_attachment_id($job_details->image); ?>

                            </div>
                        </div>
                        <div class="content">
                            <div class="single-job-details-item">
                                <div class="inner-content">
                                    <?php if(!empty($job_details->buyer)): ?>
                                    <div class="single-specific">
                                        <div class="buyer_informatoin">
                                            <div class="image">
                                                <?php echo render_image_markup_by_attachment_id(optional($job_details->buyer)->image,'','','thumb'); ?>

                                            </div>
                                            <div class="buyer_contnet_warp">
                                                <h4 class="buyer_name"><?php echo e(optional($job_details->buyer)->name); ?></h4>
                                              <div class="buyer_info_wrap">
                                                <span class="buyer_info"><i class="las la-briefcase"></i> <?php echo e(__('Total Posted Jobs')); ?> :<?php echo e(optional($job_details->buyer)->jobs?->count()); ?> </span>
                                                <span class="buyer_info"><i class="las la-calendar-day"></i> <?php echo e($job_details->created_at?->diffForHumans()); ?></span>
                                                <span class="buyer_info"><i class="las la-eye"></i> <?php echo e(__('Total View')); ?> <?php echo e($job_details->view); ?></span>
                                                
                                              </div>
                                            </div>
                                        </div>
                                        <h4 class="job-section-title"><?php echo e(__('Job Details')); ?></h4>
                                        <p class="single-specific-details"><?php echo $job_details->description; ?></p>
                                    </div>
                                    <?php endif; ?>
                                    
                                </div>
                            </div>
                        </div>
                        <?php if(count($same_buyer_jobs) > 0): ?>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="single-recent-posted-job job-post-new-widget">
                                    <h4 class="widget-title-new"><?php echo e(__('This Buyer Other Jobs')); ?></h4>
                                    <div class="row">
                                    <?php $__currentLoopData = $same_buyer_jobs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $job): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php
                                
                                                $image =  render_background_image_markup_by_attachment_id($job->image,'','','thumb');
                                                $title =  $job->title;
                                                $slug =  $job->slug;
                                                $route = route('job.post.details',$slug);
                                                $description =  Str::limit(strip_tags($job->description),100);
                                                $price =  amount_with_currency_symbol($job->price);
                                                $buyer_image =  render_image_markup_by_attachment_id(optional($job->buyer)->image,'','','thumb');
                                                $buyer_name =  optional($job->buyer)->name;
                                                $job_country =  optional($job->country)->country;
                                                $job_city =  optional($job->city)->service_city;
                                                
                                                if($job_country){
                                                    $job_location = '<span class="single_location" style="color:#fff"><i class="las la-map-marker-alt"></i>' .' '.$job_country .' , '. $job_city .'</span>';
                                                }else{
                                                    $job_location = '<span class="single_location" style="color:#fff"><i class="las la-map-marker-alt"></i>' .__('Online').'</span>';
                                                }
                                
                                                $is_job_hired = $job->job_request->where('is_hired',1)->count() ?? 0;
                                                $hired = __('Already Hired');
                                                
                                                if($is_job_hired >= 1){
                                                    $apply = '<a href="javascript:void(0)" class="btn btn-danger w-100" disabled>'.$hired.'</a>';
                                                }elseif($job->dead_line >= date('Y-m-d h:i:s')){
                                                    $apply = '<a href="'.$route.'" class="cmn-btn btn-small btn-bg-1 w-100">'.__('Apply Now').' </a>';
                                                }else {
                                                    $apply = __('Expired');
                                                }
                                    
                                            ?>
                                            <div class="col-lg-6 col-md-6 margin-top-30">
                                              <div class="single-service no-margin wow fadeInUp" data-wow-delay=".2s">
                                                <a href="$route" class="service-thumb">
                                                    <div class="service-thumb service-bg-thumb-format" <?php echo $image; ?>></div>
                                                    <div class="country_city_location">
                                                        <?php echo $job_location; ?>

                                                    </div>
                                                </a>
                                                <div class="services-contents">
                                                    <ul class="author-tag">
                                                        <li class="tag-list">
                                                            <a href="#">
                                                                <div class="authors">
                                                                    <div class="thumb">
                                                                        <?php echo $buyer_image; ?>

                                                                        <span class="notification-dot"></span>
                                                                    </div>
                                                                    <span class="author-title"> <?php echo e($buyer_name); ?> </span>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                    <h5 class="common-title"> <a href="$route"> <?php echo e($title); ?> </a> </h5>
                                                    <p class="common-para"><?php echo e($description); ?></p>
                                                    <div class="service-price">
                                                        <span class="starting"> <?php echo e(__('Starting at')); ?> </span>
                                                        <span class="prices"><?php echo e($price); ?></span>
                                                    </div>
                                                    <div class="btn-wrapper d-flex flex-wrap">
                                                        <?php echo $apply; ?>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php endif; ?>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="widget-area-wrapper">
                        <div class="widget">
                            <div class="single-recent-posted-job job-post-new-widget hired-profile-widget">
                                <h3 class="job-information"><?php echo e(__("Job Overview")); ?></h3>
                                <div class="hired-description-list mt-4">
                                    <div class="hired-description-item">
                                        <div class="icon">
                                            <i class="las la-coins"></i>
                                        </div>
                                        <div class="content_warp">
                                            <h6 class="hired-description-title subject salary"><?php echo e(__('Budget')); ?></h6>
                                            <p class="hired-description-para object amount"><?php echo e(float_amount_with_currency_symbol($job_details->price)); ?></p>
                                        </div>
                                    </div>
                                    <div class="hired-description-item">
                                        <div class="icon">
                                            <i class="las la-map-marked"></i>
                                        </div>
                                        <div class="content_warp">
                                            <h6 class="hired-description-title subject salary"><?php echo e(__('Job Location')); ?></h6>
                                            <p class="hired-description-para object amount">
                                                
                                                <?php if($job_details->is_job_online == 0): ?>
                                                    <?php echo e(optional($job_details->country)->country); ?>

                                                    <span> , </span>
                                                    <?php echo e(optional($job_details->city)->service_city); ?>

                                                <?php else: ?>
                                                    <span><?php echo e(__('Online Jobs')); ?></span>
                                                <?php endif; ?>
                                            </p>
                                        </div>
                                       
                                    </div>
                                    <div class="hired-description-item">
                                        <div class="icon">
                                            <i class="las la-calendar-week"></i>
                                        </div>
                                         <div class="content_warp">
                                            <h6 class="hired-description-title subject salary"><?php echo e(__('Deadline')); ?></h6>
                                            <p class="hired-description-para deadline">
                                                
                                                <span class="date"><?php echo e(Carbon\Carbon::parse($job_details->deadline)->format('Y-m-d')); ?> </span>
                                            </p>
                                        </div>
                                        
                                    </div>
                                    <div class="hired-description-item">
                                        <div class="icon">
                                            <i class="las la-list"></i>
                                        </div>
                                        <div class="content_warp">
                                            <h6 class="hired-description-title subject salary"><?php echo e(__('Category')); ?></h6>
                                            <a href="<?php echo e(route('job.post.category.jobs',optional($job_details->category)->slug)); ?>">
                                                <p class="hired-description-para deadline">
                                                    
                                                    <span class="date"><?php echo e(optional($job_details->category)->name); ?> </span>
                                                </p>
                                            </a>
                                        </div>
                                        
                                    </div>
                                    
                                    <div class="job-apply-button-wrap">
                                        <?php if($is_job_hired >= 1): ?>
                                            <span class="cmn-btn btn-outline-1 danger w-100" disable><?php echo e(__('Already Hired')); ?></span>
                                        <?php else: ?>
                                            <?php if(Auth::guard('web')->check()): ?>
                                                <?php if($job_details?->job_request?->where('seller_id',Auth::guard('web')->id())?->first()): ?>
                                                    <a href="#0"class="cmn-btn btn-danger w-100"><?php echo e(__('Already Applied')); ?></a>
                                                <?php elseif(Carbon\Carbon::parse($job_details->deadline)->gt(Carbon\Carbon::now())): ?>
                                                    <a href="#0" disabled class="cmn-btn btn-danger w-100"><?php echo e(__('Job Expired')); ?></a>
                                                <?php elseif(auth("web")->user()->user_type === 1 ): ?>
                                                    <a href="#0" disabled class="cmn-btn btn-danger w-100"><?php echo e(__('Only Seller Can Apply')); ?></a>
                                                <?php else: ?>
                                                <a href="#"
                                                   class="cmn-btn btn-outline-1 get_subscription_id w-100"
                                                   data-toggle="modal"
                                                   data-target="#jobRequestModal"
                                                   data-id="<?php echo e($job_details->id); ?>"
                                                   data-buyer_id="<?php echo e($job_details->buyer_id); ?>"
                                                   data-price="<?php echo e($job_details->price); ?>"><?php echo e(__('Apply Now')); ?></a>
                                                <?php endif; ?>   
                                            <?php else: ?>
                                                <a class="cmn-btn btn-outline-1 w-100" href="<?php echo e(route('user.login').'?return='.request()->path()); ?>"><?php echo e(__('Login To Apply')); ?></a>
                                            <?php endif; ?>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php if(count($similar_jobs) > 0): ?>
                <div class="col-lg-12">
                     <div class="single-recent-posted-job job-post-new-widget  margin-top-60">
                        <h4 class="widget-title-new"><?php echo e(__('Similar Jobs')); ?></h4>
                        <div class="row">
                        <?php $__currentLoopData = $similar_jobs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $job): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php
                                
                                    $image =  render_background_image_markup_by_attachment_id($job->image,'','','thumb');
                                    $title =  $job->title;
                                    $slug =  $job->slug;
                                    $route = route('job.post.details',$slug);
                                    $description =  Str::limit(strip_tags($job->description),100);
                                    $price =  amount_with_currency_symbol($job->price);
                                    $buyer_image =  render_image_markup_by_attachment_id(optional($job->buyer)->image,'','','thumb');
                                    $buyer_name =  optional($job->buyer)->name;
                                    $job_country =  optional($job->country)->country;
                                    $job_city =  optional($job->city)->service_city;
                                    if($job_country){
                                        $job_location = '<span class="single_location" style="color:#fff"><i class="las la-map-marker-alt"></i>' .' '.$job_country .' , '. $job_city .'</span>';
                                    }else{
                                        $job_location = '<span class="single_location" style="color:#fff"><i class="las la-map-marker-alt"></i>' .__('Online').'</span>';
                                    }
                    
                                    $is_job_hired = $job->job_request->where('is_hired',1)->count() ?? 0;
                                    $hired = __('Already Hired');
                    
                                    if($is_job_hired >= 1){
                                        $apply = '<a href="javascript:void(0)" class="btn btn-danger w-100" disabled>'.$hired.'</a>';
                                    }else{
                                        $apply = '<a href="'.$route.'" class="cmn-btn btn-small btn-bg-1 w-100">'.__('Apply Now').' </a>';
                                    }
                        
                                ?>
                                <div class="col-lg-4 col-md-6 margin-top-30">
                                  <div class="single-service no-margin wow fadeInUp" data-wow-delay=".2s">
                                    <a href="$route" class="service-thumb">
                                        <div class="service-thumb service-bg-thumb-format" <?php echo $image; ?>></div>
                                        <div class="country_city_location">
                                            <?php echo $job_location; ?>

                                        </div>
                                    </a>
                                    <div class="services-contents">
                                        <ul class="author-tag">
                                            <li class="tag-list">
                                                <a href="#">
                                                    <div class="authors">
                                                        <div class="thumb">
                                                            <?php echo $buyer_image; ?>

                                                            <span class="notification-dot"></span>
                                                        </div>
                                                        <span class="author-title"> <?php echo e($buyer_name); ?> </span>
                                                    </div>
                                                </a>
                                            </li>
                                        </ul>
                                        <h5 class="common-title"> <a href="$route"> <?php echo e($title); ?> </a> </h5>
                                        <p class="common-para"><?php echo e($description); ?></p>
                                        <div class="service-price">
                                            <span class="starting"> <?php echo e(__('Starting at')); ?> </span>
                                            <span class="prices"><?php echo e($price); ?></span>
                                        </div>
                                        <div class="btn-wrapper d-flex flex-wrap">
                                            <?php echo $apply; ?>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                    </div>
                </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
    <!-- Job Details area end -->


    <!-- Add Modal -->
    <div class="modal fade" id="jobRequestModal" tabindex="-1" role="dialog" aria-labelledby="jobRequestModal" aria-hidden="true">
        <form class="ms-order-form" action="<?php echo e(route('job.post.apply')); ?>" method="post"  enctype="multipart/form-data">
            <?php echo csrf_field(); ?>
            <input type="hidden" name="buyer_id" value="<?php echo e($job_details->buyer_id); ?>">
            <input type="hidden" name="job_post_id" value="<?php echo e($job_details->id); ?>">
            <input type="hidden" name="title" value="<?php echo e($job_details->title); ?>">
            <input type="hidden" name="buyer_email" value="<?php echo e(optional($job_details->buyer)->email); ?>">
            <input type="hidden" name="job_price" value="<?php echo e($job_details->price); ?>">

            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="jobRequestModal"><?php echo e(__('Apply This Job')); ?></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="confirm-bottom-content">
                            <div class="col-lg-12">
                                <div class="order cart-total">
                                    <p class="display_error_msg"></p>
                                    <div class="form-group">
                                        <label for="your_offer"><?php echo e(__('Make Offer')); ?></label>
                                        <input type="number" name="expected_salary" id="expected_salary" class="form-control mt-2" placeholder="<?php echo e(__('Enter Your Offer')); ?>">
                                        <p class="text-info"><?php echo e(__('Enter your offer amount')); ?></p>
                                    </div>
                                    <div class="form-group">
                                        <label for="details"><?php echo e(__('Short Description')); ?></label>
                                        <textarea name="cover_letter" id="cover_letter" rows="5" class="form-control mt-2" placeholder="<?php echo e(__('Enter Short description')); ?>"></textarea>
                                        <p class="text-info"><?php echo e(__('In short description enter your cover letter or something like that')); ?></p>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo e(__('Close')); ?></button>
                        <button type="submit" class="btn btn-success order_create_from_jobs"><?php echo e(__('Submit')); ?></button>
                    </div>
                </div>
            </div>
        </form>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
    <script src="<?php echo e(asset('assets/frontend/js/rating.js')); ?>"></script>
    <script>
        (function($){
            "use strict";

            $(document).ready(function(){

                $("#review").rating({
                    "value": 3,
                    "click": function (e) {
                        $("#rating").val(e.stars);
                    }
                });

                $(document).on('submit','.service_review_form',function(e){
                    e.preventDefault();
                    let service_id = $('#service_id').val();
                    let seller_id = $('#seller_id').val();
                    let rating = $('#rating').val();
                    let name = $('#name').val();
                    let email = $('#email').val();
                    let message = $('#message').val();

                    $.ajax({
                        url:"<?php echo e(route('service.review.add')); ?>",
                        method:"post",
                        data:{
                            service_id:service_id,
                            seller_id:seller_id,
                            rating:rating,
                            name:name,
                            email:email,
                            message:message,
                        },
                        success:function(res){
                            if (res.status == 'success') {
                                toastr.options = {
                                    "closeButton": true,
                                    "debug": false,
                                    "newestOnTop": false,
                                    "progressBar": true,
                                    "preventDuplicates": true,
                                    "onclick": null,
                                    "showDuration": "100",
                                    "hideDuration": "1000",
                                    "timeOut": "5000",
                                    "extendedTimeOut": "1000",
                                    "showEasing": "swing",
                                    "hideEasing": "linear",
                                    "showMethod": "show",
                                    "hideMethod": "hide"
                                };
                                toastr.success('Success!! Thanks For Review---');
                            }
                            $('.service_review_form')[0].reset();
                        }
                    });
                })

            });
        })(jQuery);
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/Modules/JobPost/Resources/views/frontend/jobs/job-details.blade.php ENDPATH**/ ?>