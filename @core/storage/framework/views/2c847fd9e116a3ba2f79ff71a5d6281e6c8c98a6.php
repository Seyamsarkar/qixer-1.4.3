<?php if($errors->any()): ?>
    <div class="alert alert-danger">
        <ul class="list-none">
            <button type="button btn-sm" class="close" data-dismiss="alert">×</button>
            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li> <?php echo e($error); ?></li> 
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </ul>
    </div>
<?php endif; ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/resources/views/components/msg/error.blade.php ENDPATH**/ ?>