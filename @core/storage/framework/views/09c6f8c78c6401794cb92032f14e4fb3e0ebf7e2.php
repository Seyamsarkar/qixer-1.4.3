<?php if(session()->has('msg')): ?>
    <div class="alert alert-<?php echo e(session('type')); ?>">
        <?php echo purify_html(session('msg')); ?>

    </div>
<?php endif; ?>
<?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/resources/views/backend/partials/message.blade.php ENDPATH**/ ?>