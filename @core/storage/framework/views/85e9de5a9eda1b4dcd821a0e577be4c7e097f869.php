

<?php $__env->startSection('page-meta-data'); ?>
  <title> <?php echo e(__('All Sellers')); ?></title>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('page-title'); ?>
<?php echo e(__('All Sellers')); ?>

<?php $__env->stopSection(); ?> 

<?php $__env->startSection('inner-title'); ?>
<?php echo e(__('All Sellers')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <!-- Category Service area starts -->
    <section class="category-services-area padding-top-70 padding-bottom-100">
        <div class="container">
            <div class="row">

                <?php if(!empty($seller_lists)): ?>
                
                    <?php $__currentLoopData = $seller_lists; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $seller): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php
                        $img_url = get_attachment_image_by_id($seller->image);
                        if($img_url['img_url']){
                            $seller_image =  render_background_image_markup_by_attachment_id($seller->image);
                        }else{
                            $seller_image = 'style="background-image:url('.asset('assets/uploads/no-image.png').')"';
                        }
                    ?>
                
                        <div class="col-lg-3 col-md-6">
                        <div class="single_seller_profile gray_bg">
                            <div class="thumb" <?php echo $seller_image; ?>></div>
                            <div class="content_area_wrap">
                                <h4 class="title">
                                    <a href="<?php echo e(route('about.seller.profile',$seller->username)); ?>"><?php echo e($seller->name); ?></a>
                                    <?php if(optional($seller->sellerVerify)->status==1): ?>
                                        <div data-toggle="tooltip" data-placement="top" title="<?php echo e(__('This seller is verified by the site admin according his national id card.')); ?>"> <span class="seller-verified"> <i class="las la-check"></i> </span></div>
                                    <?php endif; ?>
                                </h4>
                                 <?php if(optional($seller->review)->avg('rating') >=1): ?> 
                                    <div class="profiles-review">
                                        <span class="reviews">
                                            <b><?php echo ratting_star(round(optional($seller->review)->avg('rating'), 1)); ?></b>
                                            (<?php echo e(optional($seller->review)->count()); ?>)
                                        </span>
                                    </div>
                                <?php endif; ?>
                                <span class="order_completation"><?php echo e($seller->order->where('status', 2)->count() ?? 0); ?> <?php echo e(__('Order Completed')); ?></span> 
                            </div>
                        </div>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php if($seller_lists->count() >= 12): ?>
                        <div class="col-lg-12">
                            <div class="blog-pagination margin-top-55">
                                <div class="custom-pagination mt-4 mt-lg-5">
                                    <?php echo $seller_lists->links(); ?>

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

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/resources/views/frontend/pages/seller/all-seller.blade.php ENDPATH**/ ?>