
<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Live Chat')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('style'); ?>
    <style>
        .dashboard-right .col-lg-8-item {
            border-left: 1px solid #fff;
            max-width: 450px;
            margin-left: 0;
            margin-right: auto;
        }
        .dashboard-right .chat_box.chat-opened {
            box-shadow: none;
        }
        .dashboard-right .col-lg-4-item {
            box-shadow: none;
        }
        @media  screen and (max-width:991px) {
            .chat-mobile-icon {
                margin-top: 20px;
            }
        }
        @media  screen and (max-width:620px) {
            .dashboard-right .row-flex-item {
                flex-direction: column;
                margin-top: 20px;
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
                    <div id="app">

                        <div class="chat-mobile-icon">
                            <i class="las la-bars"></i>
                        </div>
                        <div class="row-flex-item seller-chat-row-item">
                            <input type="hidden" id="current_user" value="<?php echo e(\Auth::user()->id); ?>" />

                            <div class="col-lg-4-item" id="col-lg-4-item">
                                <?php if($buyers->count() > 0): ?>
                                    <div class="chat-showing-person">
                                        <div class="public-chat-flex">
                                            <h5 class="panel-title"><?php echo e(__('All Contacts')); ?></h5>
                                        </div>
                                        <div class="input-name-search-field custom-form">
                                            <input class="form-control" type="text" placeholder="<?php echo e(__('Search Name')); ?>" id="chat_name_search_text">
                                        </div>
                                        <div class="seller_container">
                                            <ul class="user-profile-chat margin-top-30" id="users">
                                                <?php $__currentLoopData = $buyers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $buyer): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <li>
                                                        <a href="javascript:void(0);" class="chat-toggle"data-id="<?php echo e(optional($buyer->buyerList)->id); ?>"data-user="<?php echo e(optional($buyer->buyerList)->name); ?>">
                                                            <div class="chat-bg bg-image" <?php echo render_background_image_markup_by_attachment_id(optional($buyer->buyerList)->image); ?>> <span class="notification-dot active"></span> </div>
                                                            <h4 class="chat-author-title"> <?php echo e(optional($buyer->buyerList)->name); ?> </h4>
                                                        </a>
                                                    </li>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </ul>
                                        </div>
                                    </div>


                                <?php else: ?>
                                    <p class="no-contact-found"><?php echo e(__('No Contacts Yet')); ?></p>
                                <?php endif; ?>
                            </div>
                            <div class="col-lg-8-item">
                                <div class="chat-showing-item">
                                    <div id="chat-overlay" class="row-"></div>
                                    <audio id="chat-alert-sound" style="display: none">
                                        <source src="<?php echo e(asset('assets/uploads/sound/facebook_chat.mp3')); ?>" />
                                    </audio>
                                    <?php echo $__env->make('livechat::frontend.seller.chat-box', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        window.base_url = "<?php echo e(url('/')); ?>";
    </script>
    <script src="https://js.pusher.com/4.1/pusher.min.js"></script>
    <script src="<?php echo e(asset('@core/public/js/app.js')); ?>"></script>

    <script>
        $(document).on('click','.chat-mobile-icon', function(){
            document.getElementById("col-lg-4-item").style.display = "block";
            $(this).hide('.chat-mobile-icon');
        });
        function mobileChat(chatMobileContact) {
            if (chatMobileContact.matches) { // If media query matches
                document.getElementById("col-lg-4-item").style.display = "none";
                $('.chat-mobile-icon').show();
            }
        }
    </script>

 <?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.user.seller.seller-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/Modules/LiveChat/Resources/views/frontend/seller/livechat.blade.php ENDPATH**/ ?>