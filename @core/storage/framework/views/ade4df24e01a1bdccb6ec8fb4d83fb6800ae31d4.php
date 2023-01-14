

<?php $__env->startSection('page-meta-data'); ?>
<?php echo render_site_title($page_post->meta_title ?? $page_post->title); ?>

<!-- Primary Meta Tags -->
<meta name="title" content="<?php echo e(optional($page_post->meta_data)->meta_title); ?>">
<meta name="description" content="<?php echo e(optional($page_post->meta_data)->meta_description); ?>">

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="<?php echo e(URL::current()); ?>">
<meta property="og:title" content="<?php echo e(optional($page_post->meta_data)->meta_title); ?>">
<meta property="og:description" content="<?php echo e(optional($page_post->meta_data)->meta_description); ?>">
<?php echo render_og_meta_image_by_attachment_id(optional($page_post->meta_data)->facebook_meta_image); ?>


<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url" content="<?php echo e(URL::current()); ?>">
<meta property="twitter:title" content="<?php echo e(optional($page_post->meta_data)->meta_title); ?>">
<meta property="twitter:description" content="<?php echo e(optional($page_post->meta_data)->meta_description); ?>">
<?php echo render_twitter_meta_image_by_attachment_id(optional($page_post->meta_data)->twitter_meta_image); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('page-title'); ?>
<?php echo e(optional(getPageDetailsFromSlug('blog_page'))->title); ?>

<?php $__env->stopSection(); ?> 
<?php $__env->startSection('site-title'); ?>
<?php echo e(optional(getPageDetailsFromSlug('blog_page'))->title); ?>

<?php $__env->stopSection(); ?> 

<?php $__env->startSection('content'); ?>
    <!-- Blog area starts -->
    <section class="blog-area padding-top-70 padding-bottom-100">
        <div class="container">
            <div class="row">
                <?php $__currentLoopData = $all_blogs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $blog): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-lg-4 col-md-6 margin-top-30">
                    <div class="single-blog no-margin wow fadeInUp" data-wow-delay=".2s">
                        <a href="<?php echo e(route('frontend.blog.single',$blog->slug)); ?>" class="blog-thumb service-bg-thumb-format" <?php echo render_background_image_markup_by_attachment_id($blog->image); ?>>

                        </a>
                        <div class="blog-contents">
                            <ul class="tags">
                                <li>
                                    <a href="javascript:void(0)"> <i class="las la-clock"></i> <?php echo e(optional($blog->created_at)->toFormattedDateString()); ?> </a>
                                </li>
                                <li>
                                    <a href="<?php echo e(route('frontend.blog.category',optional($blog->category)->slug)); ?>"> <i class="las la-tag"></i><?php echo e(optional($blog->category)->name); ?> </a>
                                </li>
                            </ul>
                            <h5 class="common-title"> <a href="<?php echo e(route('frontend.blog.single',$blog->slug)); ?>"><?php echo e($blog->title); ?> </a> </h5>
                            <p class="common-para"><?php echo Str::words(strip_tags($blog->blog_content),20); ?> </p>
                        </div>
                    </div>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php if($all_blogs->count() >= 6): ?>
                    <div class="col-lg-12">
                        <div class="blog-pagination margin-top-55">
                            <div class="custom-pagination mt-4 mt-lg-5">
                            <?php echo $all_blogs->links(); ?>

                            </div>
                        </div>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </section>
    <!-- Blog area end -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/resources/views/frontend/pages/blog/blog-static.blade.php ENDPATH**/ ?>