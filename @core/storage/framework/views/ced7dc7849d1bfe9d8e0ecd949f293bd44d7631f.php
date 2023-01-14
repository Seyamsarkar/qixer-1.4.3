

<?php $__env->startSection('site-title'); ?>
    <?php if($category !=''): ?>
        <?php echo e($category->name); ?>

    <?php endif; ?>
    <?php if($sub_category !=''): ?>
        <?php echo e($sub_category->name); ?>

    <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('page-title'); ?>
    <?php if($category !=''): ?>
        <?php echo e($category->name); ?>

    <?php endif; ?>
    <?php if($sub_category !=''): ?>
        <?php echo e($sub_category->name); ?>

    <?php endif; ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/frontend/css/font-awesome.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/frontend/css/job-post.css')); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('inner-title'); ?>

    <?php if($category !=''): ?>
        <?php echo e(__('Category:')); ?> <?php echo e($category->name); ?>

    <?php endif; ?>
    <?php if($sub_category !=''): ?>
        <?php echo e(__('Category:')); ?> <?php echo e($sub_category->name); ?>

    <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <!-- Category jobs area starts -->
    <section class="category-services-area padding-top-70 padding-bottom-100">
        <div class="container">
            <div class="row">

                <?php if($all_jobs->count() >= 1): ?>
                    <?php $__currentLoopData = $all_jobs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $job): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                        <div class="col-lg-4 col-md-6 margin-top-30 all-services">
                            <div class="single-service no-margin wow fadeInUp" data-wow-delay=".2s">
                                <a href="<?php echo e(route('job.post.details',$job->slug)); ?>" class="service-thumb">
                                    <div class="category_jobs bg-image" <?php echo render_background_image_markup_by_attachment_id($job->image); ?>></div>
                                    <div class="country_city_location">
                                        <span class="single_location" style="color:#fff">
                                            <i class="las la-map-marker-alt"></i>
                                            <?php if($job->is_job_online == 0): ?>
                                                <?php echo e(optional($job->country)->country); ?>

                                                    <span> , </span>
                                                 <?php echo e(optional($job->city)->service_city); ?>

                                            <?php else: ?>
                                                <span><?php echo e(__('Online')); ?></span>
                                            <?php endif; ?>
                                        </span>
                                    </div>
                                </a>
                                <div class="services-contents">
                                    <ul class="author-tag">
                                        <li class="tag-list">
                                            <a href="#">
                                                <div class="authors">
                                                    <div class="thumb">
                                                        <?php echo render_image_markup_by_attachment_id(optional($job->buyer)->image); ?>

                                                        <span class="notification-dot"></span>
                                                    </div>
                                                    <span class="author-title"> <?php echo e(optional($job->buyer)->name); ?> </span>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                    <h5 class="common-title"> <a href="<?php echo e(route('job.post.details',$job->slug)); ?>"> <?php echo e(Str::limit($job->title)); ?> </a> </h5>
                                    <p class="common-para"> <?php echo e(Str::limit(strip_tags($job->description),100)); ?> </p>
                                    <div class="service-price">
                                        <span class="starting"> <?php echo e(__('Starting at')); ?> </span>
                                        <span class="prices"> <?php echo e(amount_with_currency_symbol($job->price)); ?> </span>
                                    </div>
                                    <div class="btn-wrapper d-flex flex-wrap">
                                        <a href="<?php echo e(route('job.post.details',$job->slug)); ?>" class="cmn-btn btn-small btn-bg-1"> <?php echo e(__('Apply Now')); ?> </a>
                                        <a href="<?php echo e(route('job.post.details',$job->slug)); ?>" class="cmn-btn btn-small btn-outline-1 ml-auto"> <?php echo e(__('View Details')); ?> </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php if($all_jobs->count() >= 9): ?>
                        <div class="col-lg-12">
                            <div class="blog-pagination margin-top-55">
                                <div class="custom-pagination mt-4 mt-lg-5">
                                    <?php echo $all_jobs->links(); ?>

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
    <!-- Category jobs area end -->

<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/Modules/JobPost/Resources/views/frontend/jobs/category-jobs.blade.php ENDPATH**/ ?>