
<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Job Requests')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>
    <style>
        .table-td-padding {
            border-collapse: separate;
            border-spacing: 10px 20px;
        }
        .dashboard-right {
            width: 100%;
            box-shadow: 0 0 40px #ebebeb;
            padding: 20px;
            border-radius: 10px;
        }
    </style>
    <link rel="stylesheet" href="<?php echo e(asset('assets/common/css/themify-icons.css')); ?>">
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
                <?php echo $__env->make('frontend.user.buyer.partials.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php if($all_job_requests->count() >= 1): ?>
                    <div class="dashboard-right">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="dashboard-flex-title">
                                    <div class="dashboard-settings margin-top-40">
                                        <h2 class="dashboards-title"><?php echo e(__('Request For Your Jobs')); ?></h2>
                                        <p class="text-warning"><?php echo e(__('You can delete those request that has not hired yet')); ?></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 margin-top-40">
                                <div class="table-responsive table-responsive--md">
                                    <table id="all_order_table" class="custom--table table-td-padding">
                                        <thead>
                                        <tr>
                                            <th> <?php echo e(__('Job Offer ID')); ?> </th>
                                            <th> <?php echo e(__('Job ID')); ?> </th>
                                            <th> <?php echo e(__('Job Type')); ?> </th>
                                            <th> <?php echo e(__('Job Title')); ?> </th>
                                            <th> <?php echo e(__('Seller Name')); ?> </th>
                                            <th> <?php echo e(__('Seller Offer')); ?> </th>
                                            <th> <?php echo e(__('Your Offer')); ?> </th>
                                            <th> <?php echo e(__('Action')); ?> </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php $__currentLoopData = $all_job_requests; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $job_req): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <tr>
                                                <td data-label="Order ID"> <?php echo e($job_req->id); ?> </td>
                                                <td data-label="Customer Name"> <?php echo e(optional($job_req->job)->id); ?> </td>
                                                <td data-label="Customer Name">
                                                    <?php echo e(optional($job_req->job)->is_job_online ? 'Online' : 'Offline'); ?>

                                                </td>
                                                <td data-label="Customer Name"> <?php echo e(Str::limit(optional($job_req->job)->title,50)); ?> </td>
                                                <td data-label="Service Date">

                                                    <?php echo e(optional($job_req->seller)->name); ?>

                                                    <?php if(optional($job_req->jobRequestTicket)->is_hired == 1): ?>
                                                        <span class="btn btn-info"><?php echo e(__('Hired')); ?></span>
                                                    <?php endif; ?>
                                                </td>
                                                <td data-label="Service Time"><?php echo e(float_amount_with_currency_symbol($job_req->expected_salary)); ?></td>
                                                <td data-label="Service Time"><?php echo e(float_amount_with_currency_symbol(optional($job_req->job)->price)); ?></td>
                                                <td data-label="Action">
                                                    <a href="<?php echo e(route('job.post.details', optional($job_req->job)->slug)); ?>" target="_blank">
                                                        <span class="btn btn-info btn-sm"><?php echo e(__('View Details')); ?></span>
                                                    </a>
                                                    <a href="<?php echo e(route('buyer.job.request.conversation', $job_req->id)); ?>">
                                                        <span class="btn btn-success btn-sm"><?php echo e(__('Conversation')); ?></span>
                                                    </a>
                                                    <?php if($job_req->is_hired != 1): ?>
                                                        <span class="btn btn-outline-danger mt-1"> <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.seller-delete-popup','data' => ['url' => route('buyer.job.request.delete',$job_req->id)]]); ?>
<?php $component->withName('seller-delete-popup'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes(['url' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('buyer.job.request.delete',$job_req->id))]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?></span>
                                                    <?php endif; ?>
                                                    <?php if($job_req->is_hired == 1): ?>
                                                        <span class="btn btn-danger btn-sm mt-1"><?php echo e(__('Hired')); ?></span>
                                                    <?php endif; ?>
                                                </td>
                                            </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="blog-pagination margin-top-55">
                                    <div class="custom-pagination mt-4 mt-lg-5">
                                        <?php echo $all_job_requests->links(); ?>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php else: ?>
                    <h2 class="no_data_found"><?php echo e(__('No Job Request Found')); ?></h2>
                <?php endif; ?>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>


<?php $__env->startSection('scripts'); ?>
    <script src="<?php echo e(asset('assets/backend/js/sweetalert2.js')); ?>"></script>
    <script>
        (function($) {
            "use strict";

            $(document).ready(function() {
                //order complete status approve
                $(document).on('click','.swal_status_change',function(e){
                    e.preventDefault();
                    Swal.fire({
                        title: '<?php echo e(__("Are you sure to change status? Once you done you can not revert this !!")); ?>',
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes, change it!'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            $(this).next().find('.swal_form_submit_btn').trigger('click');
                        }
                    });
                });

                $(document).on('click','.swal_delete_button',function(e){
                    e.preventDefault();
                    Swal.fire({
                        title: '<?php echo e(__("Are you sure?")); ?>',
                        text: '<?php echo e(__("You would not be able to revert this item!")); ?>',
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes, delete it!'
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

<?php echo $__env->make('frontend.user.buyer.buyer-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/Modules/JobPost/Resources/views/frontend/buyer/job-requests.blade.php ENDPATH**/ ?>