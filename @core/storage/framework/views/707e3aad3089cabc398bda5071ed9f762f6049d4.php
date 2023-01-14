<?php $__env->startSection('content'); ?>
    <div class="login-area">
        <div class="container">
            <div class="login-box ptb--100">
                <form method="POST" action="<?php echo e(route('admin.forget.password')); ?>">
                    <?php echo csrf_field(); ?>
                    <div class="login-form-head">
                        <h4><?php echo e(__('Forget Password')); ?></h4>
                        <p><?php echo e(__('Hello there, here you can rest you password')); ?></p>
                    </div>
                    <?php echo $__env->make('backend.partials.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php echo $__env->make('backend.partials.error', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <div class="login-form-body">
                        <div class="form-gp">
                            <label for="username"><?php echo e(__('Username Or Email')); ?></label>
                            <input type="text" id="username" name="username">
                            <i class="ti-email"></i>
                        </div>
                        <div class="submit-btn-area">
                            <button id="form_submit" type="submit"><?php echo e(__('Send Reset Password Mail')); ?> <i class="ti-arrow-right"></i></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.login-screens', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/resources/views/auth/admin/forget-password.blade.php ENDPATH**/ ?>