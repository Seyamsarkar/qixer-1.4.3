
<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Job Request Conversation Details')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/dropzone.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/media-uploader.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/summernote-bs4.css')); ?>">
    <style>
        span.low,
        span.status-open {
            display: inline-block;
            background-color: #6bb17b;
            padding: 3px 10px;
            border-radius: 4px;
            color: #fff;
            text-transform: capitalize;
            border: none;
            font-weight: 600;
            font-size: 10px;
            margin: 3px;
        }

        span.high,
        span.status-close {
            display: inline-block;
            background-color: #c66060;
            padding: 3px 10px;
            border-radius: 4px;
            color: #fff;
            text-transform: capitalize;
            border: none;
            font-weight: 600;
            font-size: 10px;
            margin: 3px;
        }

        span.medium {
            display: inline-block;
            background-color: #70b9ae;
            padding: 3px 10px;
            border-radius: 4px;
            color: #fff;
            text-transform: capitalize;
            border: none;
            font-weight: 600;
            font-size: 10px;
            margin: 3px;
        }

        span.urgent {
            display: inline-block;
            background-color: #bfb55a;
            padding: 3px 10px;
            border-radius: 4px;
            color: #fff;
            text-transform: capitalize;
            border: none;
            font-weight: 600;
            font-size: 10px;
            margin: 3px;
        }

        /* support ticket  */

        .reply-message-wrap {
            padding: 40px;
            background-color: #fbf9f9;
        }

        .gig-message-start-wrap {
            margin-top: 60px;
            margin-bottom: 60px;
            background-color: #fbf9f9;
            padding: 40px;
        }

        .single-message-item {
            background-color: #e7ebec;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
            margin-right: 80px;
        }

        .reply-message-wrap .title {
            font-size: 22px;
            line-height: 32px;
            margin-bottom: 40px;
            font-weight: 600;
        }

        .single-message-item.customer {
            background-color: #dadde0;
            text-align: left;
            margin-right: 0;
        }

        .reply-message-wrap .title {
            font-size: 22px;
            line-height: 32px;
            margin-bottom: 40px;
            font-weight: 600;
        }

        .gig-message-start-wrap .boxed-btn {
            padding: 8px 10px;
        }

        .reply-message-wrap .boxed-btn {
            padding: 8px 20px;
            font-size: 14px;
            font-weight: 500;
        }

        .reply-message-wrap textarea:focus {
            outline: none;
            box-shadow: none;
        }

        .reply-message-wrap textarea {
            border: 1px solid #e2e2e2;
        }

        .gig-message-start-wrap .title {
            font-size: 20px;
            line-height: 30px;
            margin-bottom: 40px;
            font-weight: 600;
        }

        .single-message-item .thumb .title {
            font-size: 16px;
            font-weight: 600;
            text-transform: uppercase;
            width: 40px;
            height: 40px;
            line-height: 40px;
            background-color: #c7e5ec;
            display: inline-block;
            border-radius: 5px;
            text-align: center;
        }

        .single-message-item .title {
            font-size: 16px;
            line-height: 20px;
            margin: 10px 0 0px 0;
        }

        .single-message-item .time {
            display: block;
            font-size: 13px;
            margin-bottom: 20px;
            font-weight: 500;
            font-style: italic;
        }

        .single-message-item .thumb i {
            display: block;
            width: 100%;
        }

        .single-message-item.customer .thumb .title {
            background-color: #efd2d2;
        }

        .single-message-item .top-part {
            display: flex;
            margin-bottom: 25px;
        }

        .single-message-item .top-part .content {
            flex: 1;
            margin-left: 15px;
        }


        .anchor-btn {
            border-bottom: 1px solid var(--main-color-one);
            color: var(--main-color-one);
            display: inline-block;
        }

        .all-message-wrap.msg-row-reverse {
            display: flex;
            flex-direction: column-reverse;
            position: relative;
        }

        .load_all_conversation:focus {
            outline: none;
        }

        .load_all_conversation {
            border: none;
            background-color: #111D5C;
            border-radius: 30px;
            font-size: 14px;
            line-height: 20px;
            padding: 10px 30px;
            color: #fff;
            cursor: pointer;
            text-transform: capitalize;
            position: absolute;
            top: -20px;
            left: 50%;
            transform: translateX(-50%);
            font-weight: 500;
        }

        .single-message-item ol, .single-message-item ul {
            padding-left: 15px;
        }

        .anchor-btn {
            color: #345990;
            text-decoration: underline;
            margin: 5px 0;
        }
        .dashboard-right {
            width: 100%;
            box-shadow: 0 0 40px #ebebeb;
            padding: 20px;
            border-radius: 10px;
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
                            <div class="dashboard-settings margin-top-40">
                                <h2 class="dashboards-title"> <?php echo e(__('Offer Details')); ?> </h2>
                            </div>
                            <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.msg.success','data' => []]); ?>
<?php $component->withName('msg.success'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
                            <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.msg.error','data' => []]); ?>
<?php $component->withName('msg.error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
                        </div>

                        <div class="col-lg-12 mt-5">
                            <div class="card">
                                <div class="card-body">
                                    <div class="gig-chat-message-heading">
                                        <div class="header-wrap d-flex justify-content-between">
                                            <h4 class="header-title"><?php echo e(__('Job Offer Details')); ?></h4>
                                            <?php if($request_details->is_hired === 1): ?>
                                                <div>
                                                    <span class="btn btn-danger disabled"><?php echo e(__('Hired')); ?></span>
                                                </div>
                                            <?php endif; ?>
                                        </div>

                                        <?php if($request_details): ?>
                                            <div class="gig-order-info">
                                                <p><strong><?php echo e(__('Request ID:')); ?></strong> #<?php echo e($request_details->id); ?></p>
                                                <p><strong><?php echo e(__('Job Title:')); ?></strong> <?php echo e(optional($request_details->job)->title); ?></p>
                                                <p><strong><?php echo e(__('Cover Letter:')); ?></strong> <?php echo e($request_details->cover_letter); ?></p>
                                                 <p><strong><?php echo e(__('Offer Price:')); ?></strong> <?php echo e(float_amount_with_currency_symbol($request_details->expected_salary)); ?></p>
                                            </div>
                                        <?php endif; ?>

                                        <div class="gig-message-start-wrap">
                                            <h2 class="title"><?php echo e(__('All Conversation')); ?></h2>
                                            <div class="all-message-wrap <?php if($q == 'all'): ?> msg-row-reverse <?php endif; ?>">
                                                <?php if($q == 'all' && count($all_messages) > 1): ?>
                                                    <form action="" method="get">
                                                        <input type="hidden" value="all" name="q">
                                                        <button class="load_all_conversation" type="submit"><?php echo e(__('load all message')); ?></button>
                                                    </form>
                                                <?php endif; ?>
                                                <?php $__empty_1 = true; $__currentLoopData = $all_messages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $msg): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                                    <div class="single-message-item <?php if($msg->type == 'buyer'): ?> customer <?php endif; ?>">
                                                        <div class="top-part">
                                                            <div class="thumb">
                                                            <span class="title">
                                                                 <?php if($msg->type == 'seller'): ?>
                                                                    <?php echo e(substr(optional($request_details->seller)->name ?? 'S',0,1)); ?>

                                                                <?php else: ?>
                                                                    <?php echo e(substr(optional(optional($request_details->job)->buyer)->name ?? 'B',0,1)); ?>

                                                                <?php endif; ?>
                                                            </span>
                                                                <?php if($msg->notify == 'on'): ?>
                                                                    <i class="fas fa-envelope mt-2" title="<?php echo e(__('Notified by email')); ?>"></i>
                                                                <?php endif; ?>
                                                            </div>
                                                            <div class="content">
                                                                <h6 class="title">
                                                                    <?php if($msg->type == 'seller'): ?>
                                                                        <?php echo e(optional(optional($request_details->job)->buyer)->name ?? 'B'); ?>

                                                                    <?php else: ?>
                                                                        <?php echo e(optional($request_details->seller)->name ?? 'S'); ?>

                                                                    <?php endif; ?>
                                                                </h6>
                                                                <span class="time"><?php echo e(date_format($msg->created_at,'d M Y H:i:s')); ?> | <?php echo e($msg->created_at->diffForHumans()); ?></span>
                                                            </div>
                                                        </div>
                                                        <div class="content">
                                                            <div class="message-content">
                                                                <?php echo $msg->message; ?>

                                                            </div>
                                                            <?php if(file_exists('assets/uploads/job-request/'.$msg->attachment)): ?>
                                                                <a href="<?php echo e(asset('assets/uploads/job-request/'.$msg->attachment)); ?>" download class="anchor-btn"><?php echo e($msg->attachment); ?></a>
                                                            <?php endif; ?>
                                                        </div>
                                                    </div>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                                    <p class="alert alert-warning"><?php echo e(__('no message found')); ?></p>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                        <div class="reply-message-wrap ">
                                            <h5 class="title"><?php echo e(__('Reply To Message')); ?></h5>

                                            <form action="<?php echo e(route('seller.job.request.message.send')); ?>" method="post" enctype="multipart/form-data">
                                                <?php echo csrf_field(); ?>
                                                <?php if($request_details): ?>
                                                    <input type="hidden" value="<?php echo e($request_details->id); ?>" name="request_id">
                                                <?php endif; ?>
                                                <input type="hidden" value="seller" name="user_type">
                                                <div class="form-group">
                                                    <label for=""><?php echo e(__('Message')); ?></label>
                                                    <textarea name="message" class="form-control d-none" cols="30" rows="5" ></textarea>
                                                    <div class="summernote"></div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="file"><?php echo e(__('File')); ?></label>
                                                    <input type="file" name="file" accept="zip">
                                                    <small class="info-text d-block text-danger"><?php echo e(__('max file size 200mb, only zip file is allowed')); ?></small>
                                                </div>
                                                <div class="form-group">
                                                    <input type="checkbox" name="send_notify_mail" id="send_notify_mail">
                                                    <label for="send_notify_mail"><?php echo e(__('Notify Via Mail')); ?></label>
                                                </div>
                                                <button class="btn-primary btn btn-md" type="submit"><?php echo e(__('Send Message')); ?></button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>


                </div>
            </div>
        </div>
    </div>

    <?php echo $__env->make('backend.partials.media-upload.media-upload-markup', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
    <script src="<?php echo e(asset('assets/backend/js/sweetalert2.js')); ?>"></script>
    <script src="<?php echo e(asset('assets/backend/js/summernote-bs4.js')); ?>"></script>
    <script src="<?php echo e(asset('assets/backend/js/dropzone.js')); ?>"></script>


    <script>
        (function($){
            "use strict";

            $(document).ready(function(){
                $(document).on('click','.swal_status_button',function(e){
                    e.preventDefault();
                    Swal.fire({
                        title: '<?php echo e(__("Are you sure to hire this seller?")); ?>',
                        text: '<?php echo e(__("You will not change it after hire!")); ?>',
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes, hire now!'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            $(this).next().find('.swal_form_submit_btn').trigger('click');
                        }
                    });
                });

                //select payment gateway
                $(document).on('click', '.payment_getway_image ul li',function(){
                    $(this).siblings().removeClass('active');
                    $(this).addClass('active');
                    let payment_gateway_name = $(this).data('gateway');
                    $('#msform input[name=selected_payment_gateway]').val(payment_gateway_name);

                    $('.manual_payment_transaction_field').hide();
                    if (payment_gateway_name == 'manual_payment') {
                        $('.manual_payment_transaction_field').show();
                    }
                    $(this).addClass('selected').siblings().removeClass('selected');
                    $('.payment-gateway-wrapper').find(('input')).val(payment_gateway_name);
                });
                $('.payment_getway_image ul li.selected.active').trigger('click');


                $('.summernote').summernote({
                    height: 200,   //set editable area's height
                    codemirror: { // codemirror options
                        theme: 'monokai'
                    },
                    callbacks: {
                        onChange: function(contents, $editable) {
                            $(this).prev('textarea').val(contents);
                        }
                    }
                });

            });

        })(jQuery);
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.user.seller.seller-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/Modules/JobPost/Resources/views/frontend/seller/conversation.blade.php ENDPATH**/ ?>