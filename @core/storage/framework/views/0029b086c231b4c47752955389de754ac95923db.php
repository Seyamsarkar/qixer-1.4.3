<div class="chat-popup" id="myForm">
    <div class="conversation-container">


        <div class="chat-showing-person">
            <ul class="user-profile-chat margin-top-30" id="users">
                <?php $__currentLoopData = $buyers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $buyer): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php $__currentLoopData = $messages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $message): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if($message->fromUser->user_type === 0): ?>
                            <li>
                                <h5 class="chat-author-title">
                                    <span class="chat-author-title-image"> <?php echo render_image_markup_by_attachment_id(optional($message->fromUser)->image); ?> </span>
                                    <span class="chat-author-title-name"><?php echo e(optional($message->fromUser)->name); ?> <small> <?php echo e($message->created_at->diffForHumans()); ?>  </small></span>
                                </h5>
                                <div class="chat-author-message-image">
                                    <?php if($message->message): ?>
                                        <p class="chat-author-text-message heading-color" ><?php echo $message->message; ?></p>
                                    <?php elseif($message->image): ?>
                                        <div class="chat-author-message-image-send">
                                            <img class="img-responsive" src="<?php echo e(asset(('assets/uploads/chat_image/'.$message->image))); ?>" />
                                        </div>
                                    <?php endif; ?>
                                </div>
                            </li>
                        <?php endif; ?>
                        <?php if($message->fromUser->user_type === 1): ?>
                            <li class="chat-message-reverse">
                            <h5 class="chat-author-title">
                                <span class="chat-author-title-image"> <?php echo render_image_markup_by_attachment_id(optional($message->fromUser)->image); ?> </span>
                                <span class="chat-author-title-name"><?php echo e(optional($message->fromUser)->name); ?> <small> <?php echo e($message->created_at->diffForHumans()); ?>  </small></span>
                            </h5>
                            <div class="chat-author-message-image">
                                <?php if($message->message): ?>
                                    <p class="chat-author-text-message heading-color" ><?php echo $message->message; ?></p>
                                <?php elseif($message->image): ?>
                                    <div class="chat-author-message-image-send">
                                        <img class="img-responsive" src="<?php echo e(asset(('assets/uploads/chat_image/'.$message->image))); ?>" />
                                    </div>
                                <?php endif; ?>
                            </div>
                        </li>
                         <?php endif; ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </ul>
        </div>



    </div>
</div>
<?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/Modules/LiveChat/Resources/views/backend/chat-box.blade.php ENDPATH**/ ?>