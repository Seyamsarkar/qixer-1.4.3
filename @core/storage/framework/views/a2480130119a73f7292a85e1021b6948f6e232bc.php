
<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Subscription')); ?>

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
                        <?php if($subscription): ?>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="dashboard-settings margin-top-40">
                                        <h2 class="dashboards-title"> <?php echo e(__('Current Subscription Details')); ?> </h2>
                                        <p class="text-info"><?php echo e(__('Note: Pending connect will be added to available connect only the payment status is completed.')); ?>, <?php echo e(get_static_option('set_number_of_connect')); ?>  <?php echo e(__('Connect will reduce for each order from available connects')); ?></p>
                                        
                                    </div>
                                </div>
                                <?php if(moduleExists('Wallet')): ?>
                                <div class="col-lg-12">
                                    <div class="dashboard-settings margin-top-40">
                                        <form action="<?php echo e(route('seller.subscription.renew')); ?>" method="post" id="renew_current_subscription_using_wallter_balance_form">
                                            <?php echo csrf_field(); ?>
                                            <input type="hidden" value="<?php echo e(optional($subscription->subscription)->id); ?>" name="subscription_id">
                                             <button type="submit" id="renew_current_subscription_using_wallter_balance" class="btn btn-warning"><?php echo e(__('Renew Current Subscription')); ?> <br> <?php echo e(__('Before Expired')); ?></button>
                                             <span  class="btn btn-success">
                                                 <?php $balance =  \Modules\Wallet\Entities\Wallet::select('balance')->where('buyer_id',Auth::guard('web')->user()->id)->first() ?>
                                                 <?php echo e(__('Wallet Balance')); ?><br>
                                                 <?php echo e(float_amount_with_currency_symbol($balance->balance)); ?>

                                             </span>
                                        </form>
                                        <p class="text-info"><?php echo e(__('Note: You can renew your current subscription from here using your wallet balance. Simply click on the above button and rest of the process will done automatically.')); ?></p>
                                    </div>
                                </div>
                                <?php endif; ?>
                            </div>
                            <div class="dashboard-service-single-item border-1 margin-top-40">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="table-responsive table-responsive--md">
                                            <table id="complete_order_table" class="custom--table">
                                                <thead>
                                                <tr>
                                                    <th> <?php echo e(__('Subscription Details')); ?> </th>
                                                    <th> <?php echo e(__('Type')); ?> </th>
                                                    <th> <?php echo e(__('Connect Details')); ?> </th>
                                                    <th> <?php echo e(__('Payment Details')); ?> </th>
                                                    <th> <?php echo e(__('Expire Date')); ?> </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                          <span><?php echo e(__('Title:')); ?> <?php echo e(optional($subscription->subscription)->title); ?> </span> <br>
                                                          <span><?php echo e(__('Type:')); ?> <?php echo e(optional($subscription->subscription)->type); ?> </span> <br>
                                                          <span><?php echo e(__('Connect:')); ?> <?php echo e(optional($subscription->subscription)->connect); ?> </span> <br>
                                                          <span><?php echo e(__('Price:')); ?> <?php echo e(float_amount_with_currency_symbol(optional($subscription->subscription)->price)); ?> </span> <br>
                                                        </td>
                                                        <td> <?php echo e(ucfirst($subscription->type)); ?> </td>
                                                        <td>
                                                            <?php if($subscription->type == 'lifetime'): ?>
                                                                <?php echo e(__('Connect: ')); ?>  <?php echo e(__('No Limit')); ?> <br>
                                                            <?php else: ?>
                                                                <?php echo e(__('Available Connect: ')); ?>  <?php echo e($subscription->connect); ?> <br>
                                                                <?php if($subscription->payment_status == 'pending' || $subscription->payment_status == ''): ?>
                                                                    <?php echo e(__('Pending Connect: ')); ?>

                                                                    <?php echo e($subscription->initial_connect); ?> <br>
                                                                <?php endif; ?>
                                                            <?php endif; ?>
                                                        </td>
                                                        <td>
                                                            <span class="service-review"> <?php echo e(__('Payment Gateway:')); ?> <?php echo e(ucfirst($subscription->payment_gateway)); ?> </span> <br>
                                                            <span class="service-review"> <?php echo e(__('Payment Status:')); ?>

                                                                <?php echo e(ucfirst($subscription->payment_status=='complete' ? 'complete' : 'pending')); ?> <br>
                                                                <?php if($subscription->payment_status == 'pending' || $subscription->payment_status == ''): ?>
                                                                    <?php if( $subscription->payment_gateway != 'manual_payment'): ?>
                                                                        <form action="<?php echo e(route('seller.subscription.buy')); ?>" method="post" enctype="multipart/form-data">
                                                                            <?php echo csrf_field(); ?>
                                                                            <input type="hidden" name="subscription_id" value="<?php echo e($subscription->id); ?>" >
                                                                            <input type="hidden" name="price" value="<?php echo e($subscription->initial_price); ?>" >
                                                                            <input type="hidden" name="type" value="<?php echo e($subscription->type); ?>" >
                                                                            <input type="hidden" name="seller_payment_later" value="later" >
                                                                            <input type="hidden" name="selected_payment_gateway" value="<?php echo e($subscription->payment_gateway); ?>">
                                                                            <button type="submit" class="small-btn btn-success margin-top-20"><?php echo e(__('Pay Now')); ?></button>
                                                                        </form>
                                                                    <?php endif; ?>
                                                                <?php endif; ?>
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <?php if($subscription->type == 'lifetime'): ?>
                                                                <span class="service-review"><?php echo e(__('Expire Date:')); ?>  <?php echo e(__('No Limit')); ?></span> <br>
                                                            <?php else: ?>
                                                                <span class="service-review"> <?php echo e(__('Expire Date:')); ?>

                                                                    <?php echo e(date('d-m-Y', strtotime($subscription->expire_date))); ?>

                                                                </span>
                                                            <?php endif; ?>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php else: ?>
                            <h2 class="no_data_found"><?php echo e(__('No Subscription Found')); ?></h2>
                        <?php endif; ?>

                        <?php if($subscription_history): ?>
                            <div class="dashboard-service-single-item border-1 margin-top-40">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="table-responsive table-responsive--md">
                                            <h2 class="dashboards-title"><?php echo e(__('Subscription History')); ?></h2>
                                            <p class="text-info"><?php echo e(__('Your earlier subscription history list.')); ?></p>
                                            <table id="complete_order_table" class="custom--table">
                                                <thead>
                                                <tr>
                                                    <th> <?php echo e(__('#No')); ?> </th>
                                                    <th> <?php echo e(__('Subscription Details')); ?> </th>
                                                    <th> <?php echo e(__('Payment Details')); ?> </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <?php $__currentLoopData = $subscription_history; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <tr>
                                                        <td><?php echo e($key+1); ?></td>
                                                        <td>
                                                            <?php echo e(__('Title:')); ?> <?php echo e(optional($data->subscription)->title); ?> <br>
                                                            <?php echo e(__('Price:')); ?>

                                                            <?php if($data->price == 0): ?>
                                                                <?php echo e(float_amount_with_currency_symbol($data->initial_price)); ?> <br>
                                                            <?php else: ?>
                                                                <?php echo e(float_amount_with_currency_symbol($data->price)); ?> <br>
                                                            <?php endif; ?>
                                                            <?php echo e(__('Type:')); ?> <?php echo e(ucfirst($data->type)); ?> <br>
                                                            <?php if($data->type != 'lifetime'): ?>
                                                                <?php echo e(__('Connect:')); ?>

                                                                <?php if($data->connect == 0): ?>
                                                                    <?php echo e($data->initial_connect); ?> <br>
                                                                <?php else: ?>
                                                                    <?php echo e($data->connect); ?> <br>
                                                                <?php endif; ?>
                                                                <?php echo e(__('Expire Date:')); ?> <?php echo e(date('d-m-Y', strtotime($data->expire_date))); ?><br>
                                                            <?php endif; ?>
                                                        </td>
                                                        <td>
                                                            <?php echo e(__('Payment Gateway:')); ?> <?php echo e(ucfirst($data->payment_gateway)); ?> <br>
                                                            <?php echo e(__('Payment Status:')); ?> <?php echo e(ucfirst($data->payment_status=='complete' ? 'complete' : 'pending')); ?> <br>
                                                        </td>
                                                    </tr>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </tbody>
                                            </table>
                                            <div class="blog-pagination margin-top-55">
                                                <div class="custom-pagination mt-4 mt-lg-5">
                                                    <?php echo $subscription_history->links(); ?>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                
                $(document).on('click','#renew_current_subscription_using_wallter_balance',function(e){
                    e.preventDefault();
                    
                    Swal.fire({
                      title:"<?php echo e(__('Are you sure to renew subscription?')); ?>",
                      showDenyButton: true,
                      showCancelButton: false,
                      confirmButtonText: "<?php echo e(__('Yes')); ?>",
                      denyButtonText: "<?php echo e(__('No')); ?>",
                    }).then((result) => {
                      if (result.isConfirmed) {
                        $('#renew_current_subscription_using_wallter_balance_form').trigger('submit');
                      } 
                    })

                });
                
            });

        })(jQuery);
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.user.seller.seller-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/Modules/Subscription/Resources/views/frontend/seller/subscriptions.blade.php ENDPATH**/ ?>