
<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('New Jobs')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('style'); ?>
    <style>
        .JobPost-item-seller-count {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 30px;
            width: 30px;
            background-color: var(--main-color-one);
            color: #fff;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            right: -15px;
            z-index: 9;
            border-radius: 50%;
            transition: all .3s;
        }
        .dashboard-right {
            width: 100%;
            box-shadow: 0 0 40px #ebebeb;
            padding: 20px;
            border-radius: 10px;
        }
        .dash-left-service-fixed {
            flex-basis: 40%
        }
        .dashboar-flex-services .thumb {
            height: 100%;
            width: 240px;
            height: 140px;
            border-radius: 10px;
        }

        .dashboar-flex-services .thumb-contents .service-review.style-02 {
            margin-right: 30px;
            margin-left: 0;
        }
        .dash-provider-list .jobPost_item-title,
        .dash-budget-list .jobPost_item-title {
            position: relative;
            bottom: 20px;
        }
        .dashboar-flex-services .thumb-contents {
            flex: 1;
        }
        .dashboar-flex-services .thumb-contents .title {
            font-size: 24px;
            font-weight: 600;
            line-height: 28px;
        }
        .dash-provider-list.provider .jobPost_item-title {
            font-size: 24px;
            color: var(--heading-color);
            font-weight: 500;
            display: block;
        }
        @media  screen and (max-width: 1600px) and (min-width: 992px) {
            .dashboar-flex-services .thumb {
                width: 170px;
            }
            .dashboar-flex-services .thumb-contents .service-review.style-02 {
                margin-right: 20px;
                margin-left: 0;
            }
            .dashboar-flex-services .thumb-contents .title {
                font-size: 20px;
            }
            .dashboard-switch-flex-content .dashboard-switch-single .title-price {
                font-size: 28px;
            }
        }
        @media  screen and (max-width: 991px) {
            .dashboar-flex-services .thumb {
                min-width: auto;
                width: 200px;
            }
            .dash-provider-list .jobPost_item-title, .dash-budget-list .jobPost_item-title {
                bottom: 0px;
                margin-bottom: 10px;
            }
            .dash-provider-list {
                margin-top: 10px;
            }
        }
        @media  screen and (max-width: 575px) {
            .dashboar-flex-services .thumb {
                width: 170px;
            }
        }
        @media  screen and (max-width: 480px) {
            .dashboar-flex-services {
                display: grid;
            }
        }
    </style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.frontend.seller-buyer-preloader','data' => []]); ?>
<?php $component->withName('frontend.seller-buyer-preloader'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>

    <!-- Dashboard area Starts -->
    <div class="body-overlay"></div>
    <div class="dashboard-area dashboard-padding">
        <div class="container-fluid">
            <div class="dashboard-contents-wrapper">
                <div class="dashboard-icon">
                    <div class="sidebar-icon">
                        <i class="las la-bars"></i>
                    </div>
                </div>
                <?php echo $__env->make('frontend.user.seller.partials.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="dashboard-right">

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="dashboard-settings">
                                <h2 class="dashboards-title"><?php echo e(__('All New Jobs')); ?></h2>
                                <p class="text-warning"><?php echo e(__('All new jobs are listed bellow')); ?></p>
                            </div>
                        </div>
                    </div>

                    <?php if($jobs->count() > 0): ?>
                        <?php $__currentLoopData = $jobs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="dashboard-service-single-item border-1 margin-top-40">
                                <div class="rows dash-single-inner">
                                    <div class="dash-left-service dash-left-service-fixed">
                                        <div class="dashboard-services">
                                            <div class="dashboar-flex-services">
                                                <a href="<?php echo e(route('job.post.details',$data->slug)); ?>">
                                                    <div class="thumb bg-image" <?php echo render_background_image_markup_by_attachment_id($data->image); ?>></div>
                                                </a>
                                                <div class="thumb-contents">
                                                    <h4 class="title"> <a href="<?php echo e(route('job.post.details',$data->slug)); ?>"> <?php echo e($data->title); ?> </a> </h4>
                                                    <span class="service-review style-02"> <i class="las la-eye"></i> <?php echo e($data->view); ?> </span>
                                                    <?php if($data->status==1): ?>
                                                        <span class="service-review style-02">
                                                             <small> <?php echo e(__('Status:')); ?></small> <small class="text-success"> <?php echo e(__('Active')); ?></small>
                                                        </span>
                                                    <?php else: ?>
                                                        <span class="service-review style-02">
                                                            <small> <?php echo e(__('Status:')); ?></small> <small class="text-danger"> <?php echo e(__('Inactive')); ?></small>
                                                        </span>
                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dash-provider-list provider">
                                        <div class="col-md-2">
                                            <?php if(optional($data->job_request)->count() >=1): ?>
                                                <a href="<?php echo e(route('job.post.details',$data->slug)); ?>">
                                                    <span class="btn btn-info"><?php echo e(__('Total Offer:')); ?> <?php echo e(optional($data->job_request)->count()); ?></span>
                                                </a>
                                            <?php else: ?>
                                                <a href="<?php echo e(route('job.post.details',$data->slug)); ?>">
                                                    <span class="btn btn-info"><?php echo e(__('No Offer Create Yet')); ?></span>
                                                </a>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                    <div class="dash-righ-service">
                                        <div class="dashboard-switch-flex-content">
                                            <div class="dashboard-switch-single budget dash-budget-list">
                                                <h2 class="title-price color-3"> <?php echo e(amount_with_currency_symbol($data->price)); ?> </h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                        <div class="blog-pagination margin-top-55">
                            <div class="custom-pagination mt-4 mt-lg-5">
                                <?php echo $jobs->links(); ?>

                            </div>
                        </div>
                    <?php else: ?>
                        <h2 class="no_data_found"><?php echo e(__('No New Job Created')); ?></h2>
                    <?php endif; ?>

                </div>

            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>


<?php $__env->startSection('scripts'); ?>
    <script src="<?php echo e(asset('assets/backend/js/sweetalert2.js')); ?>"></script>
    <script>
        (function($){
            "use strict";

            $(document).ready(function(){

                $(document).on('click','.swal_delete_button',function(e){
                    e.preventDefault();
                    Swal.fire({
                        title: '<?php echo e(__("Are you sure?")); ?>',
                        text: '<?php echo e(__("You would not be able to revert this item!")); ?>',
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: "<?php echo e(__('Yes, delete it!')); ?>",
                        cancelButtonText: "<?php echo e(__('Cancel')); ?>"
                    }).then((result) => {
                        if (result.isConfirmed) {
                            $(this).next().find('.swal_form_submit_btn').trigger('click');
                        }
                    });
                });

            });

        })(jQuery);
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.user.buyer.buyer-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/Modules/JobPost/Resources/views/frontend/seller/new-jobs.blade.php ENDPATH**/ ?>