

<?php $__env->startSection('page-meta-data'); ?>
    <title><?php echo e(__('Featured Services')); ?></title>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('page-title'); ?>
<?php echo e(__('Featured Service')); ?>

<?php $__env->stopSection(); ?> 

<?php $__env->startSection('inner-title'); ?>
<?php echo e(__('All Featured Service')); ?>

<?php $__env->stopSection(); ?> 

<?php $__env->startSection('content'); ?>

    <!-- Category Service area starts -->
    <section class="category-services-area padding-top-70 padding-bottom-100">
        <div class="container">
            <div class="row">

                <?php if(!empty($all_featurd_service)): ?>
                    <?php $__currentLoopData = $all_featurd_service; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $service): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        
                        <div class="col-lg-4 col-md-6 margin-top-30 all-services">
                            <div class="single-service no-margin wow fadeInUp" data-wow-delay=".2s">
                                <a href="<?php echo e(route('service.list.book',$service->slug)); ?>" class="service-thumb service-bg-thumb-format" <?php echo render_background_image_markup_by_attachment_id($service->image); ?>>

                                    <div class="award-icons">
                                        <i class="las la-award"></i>
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
                    <?php if($all_featurd_service->count() >= 9): ?>
                        <div class="col-lg-12">
                            <div class="blog-pagination margin-top-55">
                                <div class="custom-pagination mt-4 mt-lg-5">
                                    <?php echo $all_featurd_service->links(); ?>

                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                <?php endif; ?>
            </div>
        </div>
    </section>
    <!-- Category Service area end -->

<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/resources/views/frontend/pages/services/featured-services.blade.php ENDPATH**/ ?>