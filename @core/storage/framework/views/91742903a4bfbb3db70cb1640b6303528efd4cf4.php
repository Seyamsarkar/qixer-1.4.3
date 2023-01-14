

<?php $__env->startSection('style'); ?>
    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.media.css','data' => []]); ?>
<?php $component->withName('media.css'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/summernote-bs4.css')); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Live Chat Settings')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-12 mt-5">
                <?php echo $__env->make('backend.partials.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__("Live Chat Settings")); ?></h4>
                        <?php echo $__env->make('backend/partials/error', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <form action="<?php echo e(route('admin.general.global.pusher.settings')); ?>" method="POST"
                              enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="pusher_app_id"><?php echo e(__('Pusher App ID')); ?></label>
                                        <input type="text" name="pusher_app_id" id="pusher_app_id" value="<?php echo e(get_static_option('pusher_app_id')); ?>" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="pusher_app_key"><?php echo e(__('Pusher App Key')); ?></label>
                                        <input type="text" name="pusher_app_key" id="pusher_app_key" value="<?php echo e(get_static_option('pusher_app_key')); ?>" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="pusher_app_secret"><?php echo e(__('Pusher App Secret')); ?></label>
                                        <input type="text" name="pusher_app_secret" id="pusher_app_secret" value="<?php echo e(get_static_option('pusher_app_secret')); ?>" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="pusher_app_cluster"><?php echo e(__('Pusher App Cluster')); ?></label>
                                        <input type="text" name="pusher_app_cluster" id="pusher_app_cluster" value="<?php echo e(get_static_option('pusher_app_cluster')); ?>" class="form-control">
                                    </div>
                                </div>

                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="pusher_app_push_notification_auth_token"><?php echo e(__('Buyer: Pusher App (Push Notification) Auth Token')); ?></label>
                                        <input type="text" name="pusher_app_push_notification_auth_token"  value="<?php echo e(get_static_option('pusher_app_push_notification_auth_token')); ?>" class="form-control">
                                    </div>
                                </div>

                                <!-- <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="pusher_app_cluster"><?php echo e(__('Buyer: Pusher App (push notification) Auth URL')); ?></label>
                                        <input type="text" name="pusher_app_push_notification_auth_url"  value="<?php echo e(get_static_option('pusher_app_push_notification_auth_url')); ?>" class="form-control">
                                    </div>
                                </div> -->
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="pusher_app_cluster"><?php echo e(__('Buyer: Pusher App (push notification) Instance ID')); ?></label>
                                        <input type="text" name="pusher_app_push_notification_instanceId"  value="<?php echo e(get_static_option('pusher_app_push_notification_instanceId')); ?>" class="form-control">
                                    </div>
                                </div>

                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="pusher_app_push_notification_auth_token"><?php echo e(__('Seller: Pusher App (Push Notification) Auth Token')); ?></label>
                                        <input type="text" name="seller_pusher_app_push_notification_auth_token"  value="<?php echo e(get_static_option('seller_pusher_app_push_notification_auth_token')); ?>" class="form-control">
                                    </div>
                                </div>

                                <!-- <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="pusher_app_cluster"><?php echo e(__('Seller: Pusher App (push notification) Auth URL')); ?></label>
                                        <input type="text" name="seller_pusher_app_push_notification_auth_url"  value="<?php echo e(get_static_option('seller_pusher_app_push_notification_auth_url')); ?>" class="form-control">
                                    </div>
                                </div> -->
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="pusher_app_cluster"><?php echo e(__('Seller: Pusher App (push notification) Instance ID')); ?></label>
                                        <input type="text" name="seller_pusher_app_push_notification_instanceId"  value="<?php echo e(get_static_option('seller_pusher_app_push_notification_instanceId')); ?>" class="form-control">
                                    </div>
                                </div>

                            </div>

                            <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Changes')); ?></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.media.markup','data' => []]); ?>
<?php $component->withName('media.markup'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.media.js','data' => []]); ?>
<?php $component->withName('media.js'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
    <script src="<?php echo e(asset('assets/backend/js/summernote-bs4.js')); ?>"></script>
    <script>
        (function($){
            "use strict";
            $(document).ready(function(){
                <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.icon-picker','data' => []]); ?>
<?php $component->withName('icon-picker'); ?>
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
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.btn.update','data' => []]); ?>
<?php $component->withName('btn.update'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>

                $('.summernote').summernote({
                    height: 150,   //set editable area's height
                    codemirror: { // codemirror options
                        theme: 'monokai'
                    }
                });
            });
        }(jQuery));
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/resources/views/backend/general-settings/pusher-settings.blade.php ENDPATH**/ ?>