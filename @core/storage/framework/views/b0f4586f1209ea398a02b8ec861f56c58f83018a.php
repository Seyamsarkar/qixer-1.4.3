
<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Ticket Details')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>
    <style>
        span.low,
        span.status-open {
            display: inline-block;
            background-color: #6bb17b;
            padding: 3px 10px;
            border-radius: 4px;
            color: #fff;
            text-transform: capitalize;
            border: none;
            font-weight: 600;
            font-size: 10px;
            margin: 3px;
        }

        span.high,
        span.status-close {
            display: inline-block;
            background-color: #c66060;
            padding: 3px 10px;
            border-radius: 4px;
            color: #fff;
            text-transform: capitalize;
            border: none;
            font-weight: 600;
            font-size: 10px;
            margin: 3px;
        }

        span.medium {
            display: inline-block;
            background-color: #70b9ae;
            padding: 3px 10px;
            border-radius: 4px;
            color: #fff;
            text-transform: capitalize;
            border: none;
            font-weight: 600;
            font-size: 10px;
            margin: 3px;
        }

        span.urgent {
            display: inline-block;
            background-color: #bfb55a;
            padding: 3px 10px;
            border-radius: 4px;
            color: #fff;
            text-transform: capitalize;
            border: none;
            font-weight: 600;
            font-size: 10px;
            margin: 3px;
        }

        /* support ticket  */

        .reply-message-wrap {
            padding: 40px;
            background-color: #fbf9f9;
        }

        .gig-message-start-wrap {
            margin-top: 60px;
            margin-bottom: 60px;
            background-color: #fbf9f9;
            padding: 40px;
        }

        .single-message-item {
            background-color: #e7ebec;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
            margin-right: 80px;
        }

        .reply-message-wrap .title {
            font-size: 22px;
            line-height: 32px;
            margin-bottom: 40px;
            font-weight: 600;
        }

        .single-message-item.customer {
            background-color: #dadde0;
            text-align: left;
            margin-right: 0;
        }

        .reply-message-wrap .title {
            font-size: 22px;
            line-height: 32px;
            margin-bottom: 40px;
            font-weight: 600;
        }

        .gig-message-start-wrap .boxed-btn {
            padding: 8px 10px;
        }

        .reply-message-wrap .boxed-btn {
            padding: 8px 20px;
            font-size: 14px;
            font-weight: 500;
        }

        .reply-message-wrap textarea:focus {
            outline: none;
            box-shadow: none;
        }

        .reply-message-wrap textarea {
            border: 1px solid #e2e2e2;
        }

        .gig-message-start-wrap .title {
            font-size: 20px;
            line-height: 30px;
            margin-bottom: 40px;
            font-weight: 600;
        }

        .single-message-item .thumb .title {
            font-size: 16px;
            font-weight: 600;
            text-transform: uppercase;
            width: 40px;
            height: 40px;
            line-height: 40px;
            background-color: #c7e5ec;
            display: inline-block;
            border-radius: 5px;
            text-align: center;
        }

        .single-message-item .title {
            font-size: 16px;
            line-height: 20px;
            margin: 10px 0 0px 0;
        }

        .single-message-item .time {
            display: block;
            font-size: 13px;
            margin-bottom: 20px;
            font-weight: 500;
            font-style: italic;
        }

        .single-message-item .thumb i {
            display: block;
            width: 100%;
        }

        .single-message-item.customer .thumb .title {
            background-color: #efd2d2;
        }

        .single-message-item .top-part {
            display: flex;
            margin-bottom: 25px;
        }

        .single-message-item .top-part .content {
            flex: 1;
            margin-left: 15px;
        }


        .anchor-btn {
            border-bottom: 1px solid var(--main-color-one);
            color: var(--main-color-one);
            display: inline-block;
        }

        .all-message-wrap.msg-row-reverse {
            display: flex;
            flex-direction: column-reverse;
            position: relative;
        }

        .load_all_conversation:focus {
            outline: none;
        }

        .load_all_conversation {
            border: none;
            background-color: #111D5C;
            border-radius: 30px;
            font-size: 14px;
            line-height: 20px;
            padding: 10px 30px;
            color: #fff;
            cursor: pointer;
            text-transform: capitalize;
            position: absolute;
            top: -20px;
            left: 50%;
            transform: translateX(-50%);
            font-weight: 500;
        }

        .single-message-item ol, .single-message-item ul {
            padding-left: 15px;
        }

        .anchor-btn {
            color: #345990;
            text-decoration: underline;
            margin: 5px 0;
        }
    </style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="body-overlay"></div>
    <div class="dashboard-area dashboard-padding">
        <div class="container-fluid">
            <div class="dashboard-contents-wrapper">
                <div class="dashboard-icon">
                    <div class="sidebar-icon">
                        <i class="las la-bars"></i>
                    </div>
                </div>
                <div class="dashboard-right">

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="dashboard-settings margin-top-40">
                                <h2 class="dashboards-title"> <?php echo e(__('Ticket Details')); ?> </h2>
                            </div>
                        </div>

                        <div class="col-lg-12 mt-5">
                            <div class="card">
                                <div class="card-body">
                                    <div class="gig-chat-message-heading">
                                        <div class="header-wrap d-flex justify-content-between">
                                            <h4 class="header-title"><?php echo e(__('Support Ticket Details')); ?></h4>
                                            <a class="btn btn-primary btn-xs" href="<?php echo e(route('admin.tickets.all')); ?>"><?php echo e(__('All Tickets')); ?></a>
                                        </div>

                                        <div class="gig-order-info">
                                            <p><strong><?php echo e(__('Ticket ID:')); ?></strong> #<?php echo e($ticket_details->id); ?></p>
                                            <p><strong><?php echo e(__('Title:')); ?></strong> <?php echo e($ticket_details->title); ?></p>
                                            <p><strong><?php echo e(__('Subject:')); ?></strong> <?php echo e($ticket_details->subject); ?></p>
                                            <p><strong><?php echo e(__('Description:')); ?></strong> <?php echo e($ticket_details->description); ?></p>
                                            <p><strong><?php echo e(__('Status:')); ?></strong> <span class="status-<?php echo e($ticket_details->status); ?>"><?php echo e($ticket_details->status); ?></span></p>
                                            <p><strong><?php echo e(__('Priority:')); ?></strong> <span class="<?php echo e($ticket_details->priority); ?>"><?php echo e($ticket_details->priority); ?></span></p>
                                            <p><strong><?php echo e(__('Ticket For:')); ?></strong> <?php echo e(optional($ticket_details->ticket_service)->title); ?></p>
                                            <p><strong><?php echo e(__('Order ID:')); ?></strong> #<?php echo e($ticket_details->order_id); ?></p>
                                        </div>

                                        <div class="gig-message-start-wrap">
                                            <h2 class="title"><?php echo e(__('All Conversation')); ?></h2>
                                            <div class="all-message-wrap <?php if($q == 'all'): ?> msg-row-reverse <?php endif; ?>">
                                                <?php if($q == 'all' && count($all_messages) > 1): ?>
                                                    <form action="" method="get">
                                                        <input type="hidden" value="all" name="q">
                                                        <button class="load_all_conversation" type="submit"><?php echo e(__('load all message')); ?></button>
                                                    </form>
                                                <?php endif; ?>
                                                <?php $__empty_1 = true; $__currentLoopData = $all_messages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $msg): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                                    <div class="single-message-item <?php if($msg->type == 'buyer'): ?> customer <?php endif; ?>">
                                                        <div class="top-part">
                                                            <div class="thumb">
                                                            <span class="title">
                                                                 <?php if($msg->type == 'buyer'): ?>
                                                                    <?php echo e(substr($ticket_details->ticket_buyer->name ?? 'B',0,1)); ?>

                                                                <?php else: ?>
                                                                    <?php echo e(substr($ticket_details->ticket_seller->name ?? 'S',0,1)); ?>

                                                                <?php endif; ?>
                                                            </span>
                                                                <?php if($msg->notify == 'on'): ?>
                                                                    <i class="fas fa-envelope mt-2" title="<?php echo e(__('Notified by email')); ?>"></i>
                                                                <?php endif; ?>
                                                            </div>
                                                            <div class="content">
                                                                <h6 class="title">
                                                                    <?php if($msg->type == 'buyer'): ?>
                                                                        <?php echo e($ticket_details->ticket_buyer->name ?? 'B'); ?>

                                                                    <?php else: ?>
                                                                        <?php echo e($ticket_details->ticket_seller->name ?? 'S'); ?>

                                                                    <?php endif; ?>
                                                                </h6>
                                                                <span class="time"><?php echo e(date_format($msg->created_at,'d M Y H:i:s')); ?> | <?php echo e($msg->created_at->diffForHumans()); ?></span>
                                                            </div>
                                                        </div>
                                                        <div class="content">
                                                            <div class="message-content">
                                                                <?php echo $msg->message; ?>

                                                            </div>
                                                            <?php if(file_exists('assets/uploads/ticket/'.$msg->attachment)): ?>
                                                                <a href="<?php echo e(asset('assets/uploads/ticket/'.$msg->attachment)); ?>" download class="anchor-btn"><?php echo e($msg->attachment); ?></a>
                                                            <?php endif; ?>
                                                        </div>
                                                    </div>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                                    <p class="alert alert-warning"><?php echo e(__('no message found')); ?></p>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/resources/views/backend/pages/ticket/ticket-details.blade.php ENDPATH**/ ?>