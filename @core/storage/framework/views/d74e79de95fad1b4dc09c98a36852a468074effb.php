<?php if($message->from_user == \Auth::user()->id): ?>

    <div class="conversation-wrapper-flex msg_container base_sent" data-message-id="<?php echo e($message->id); ?>" id="message-line-<?php echo e($message->id); ?>">
        <div class="conversation-message-contents">
            <div class="messages msg_sent text-right">
                <?php if($message->message): ?>
                    <p class="heading-color-paragraph"><?php echo $message->message; ?></p>
                <?php elseif($message->image): ?>
                    <div class="width-100">
                        <img class="img-responsive" src="<?php echo e(asset(('assets/uploads/chat_image/'.$message->image))); ?>" />
                    </div>
                <?php endif; ?>
                <time datetime="<?php echo e(date("Y-m-dTH:i", strtotime($message->created_at->toDateTimeString()))); ?>"><?php echo e(optional($message->fromUser)->name); ?> • <?php echo e($message->created_at->diffForHumans()); ?></time>
            </div>
        </div>
        <div class="conversation-bg-thumb bg-image" <?php echo render_background_image_markup_by_attachment_id(optional($message->fromUser)->image); ?>>

        </div>
    </div>

<?php else: ?>

    <div class="row conversation-wrapper-flex msg_container base_receive" data-message-id="<?php echo e($message->id); ?>" id="message-line-<?php echo e($message->id); ?>">
        <div class="conversation-bg-thumb bg-image">
            <?php echo render_image_markup_by_attachment_id(optional($message->fromUser)->image); ?>

        </div>
        <div class="conversation-message-contents">
            <div class="messages msg_receive text-left">
                <?php if($message->message): ?>
                    <p class="heading-color-paragraph"><?php echo $message->message; ?></p>
                <?php elseif($message->image): ?>
                    <div class="width-100">
                        <img class="img-responsive" src="<?php echo e(asset(('assets/uploads/chat_image/'.$message->image))); ?>" />
                    </div>
                <?php endif; ?>
                <time datetime="<?php echo e(date("Y-m-dTH:i", strtotime($message->created_at->toDateTimeString()))); ?>"><?php echo e(optional($message->fromUser)->name); ?> • <?php echo e($message->created_at->diffForHumans()); ?></time>
            </div>
        </div>
    </div>

<?php endif; ?>
<?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/Modules/LiveChat/Resources/views/frontend/seller/message-line.blade.php ENDPATH**/ ?>