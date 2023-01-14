
<?php $__env->startSection('page-meta-data'); ?>
    <title><?php echo e(__('Subscription Success')); ?></title>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('inner-title'); ?>
    <?php echo e(__('Subscription')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <!-- Location Overview area starts -->
    <section class="location-overview-area padding-top-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <form id="msform" class="msform">
                        <!-- Successful Complete -->
                        <fieldset class="padding-top-80 padding-bottom-100">
                            <div class="form-card successful-card">
                                <h2 class="title-step"> <?php echo e(get_static_option('success_title') ?? __('SUCCESSFUL')); ?></h2>
                                <a href="<?php echo e(route('homepage')); ?>" class="succcess-icon">
                                    <i class="las la-check"></i>
                                </a>
                                <h5 class="purple-text text-center"><?php echo e(__('Your Subscription Successfully Completed')); ?></h5>
                                <?php if($subscription_details->payment_status == 'pending'): ?>
                                    <h5 class="purple-text text-center"><?php echo e(__('Your subscription will usable after payment status completed')); ?></h5>
                                <?php endif; ?>
                                <div class="btn-wrapper margin-top-35">
                                    <h4 class="mb-3"><?php echo e(__('Your Subscription Details')); ?></h4>
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th><?php echo e(__('Type')); ?></th>
                                            <th><?php echo e(__('Price')); ?></th>
                                            <th><?php echo e(__('Connect')); ?></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td><?php echo e(ucfirst($subscription_details->type)); ?></td>
                                            <?php if($subscription_details->status == 0): ?>
                                                <?php if($subscription_details->type == 'lifetime'): ?>
                                                    <td><?php echo e(float_amount_with_currency_symbol($subscription_details->initial_price)); ?></td>
                                                    <td><?php echo e(__('Connect: Unlimited')); ?></td>
                                                <?php else: ?>
                                                    <td><?php echo e(float_amount_with_currency_symbol($subscription_details->initial_price)); ?></td>
                                                    <td><?php echo e($subscription_details->initial_connect); ?></td>
                                                <?php endif; ?>
                                            <?php else: ?>
                                                <?php if($subscription_details->type == 'lifetime'): ?>
                                                    <td><?php echo e(float_amount_with_currency_symbol($subscription_details->initial_price)); ?></td>
                                                    <td><?php echo e(__('Connect: Unlimited')); ?></td>
                                                <?php else: ?>
                                                    <td><?php echo e(float_amount_with_currency_symbol($subscription_details->price)); ?></td>
                                                    <td><?php echo e($subscription_details->connect); ?></td>
                                                <?php endif; ?>
                                            <?php endif; ?>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="btn-wrapper text-center margin-top-35">
                                    <a href="<?php echo e(get_static_option('button_url') ?? route('homepage')); ?>" class="cmn-btn btn-bg-1"><?php echo e(get_static_option('button_title') ?? __('Back To Home')); ?></a>
                                    <?php if(auth('web')->check()): ?>
                                        <?php
                                            $user_details = auth('web')->user();
                                            $route_prefix = $user_details->user_type === 0 ? 'seller' : 'buyer';
                                        ?>
                                        <a href="<?php echo e(route($route_prefix.'.dashboard')); ?>" class="cmn-btn btn-bg-1"><?php echo e(__('Go To Dashboard')); ?></a>
                                        <a href="<?php echo e(route($route_prefix.'.subscription.all')); ?>" class="cmn-btn btn-bg-1"><?php echo e(__('All Subscriptions')); ?></a>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- Location Overview area end -->
<?php $__env->stopSection(); ?>






<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/Modules/Subscription/Resources/views/frontend/subscription/payment/success.blade.php ENDPATH**/ ?>