<div class="col-lg-3">
    <h5 class="header-title"><?php echo e(__('Meta Section')); ?></h5>
    <div class="nav flex-column nav-pills" id="v-pills-tab"
         role="tablist" aria-orientation="vertical">

        <a class="nav-link active" id="v-pills-home-tab"
           data-toggle="pill" href="#v-pills-home" role="tab"
           aria-controls="v-pills-home"
           aria-selected="true"><?php echo e($sidebarHeading); ?></a>

        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill"
           href="#v-pills-profile" role="tab"
           aria-controls="v-pills-profile"
           aria-selected="false"><?php echo e(__('Facebook Meta')); ?></a>

        <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill"
           href="#v-pills-messages" role="tab"
           aria-controls="v-pills-messages"
           aria-selected="false"><?php echo e(__('Twitter Meta')); ?></a>

    </div>
</div>
<div class="col-lg-9">
    <div class="tab-content" id="v-pills-tabContent">

        <div class="tab-pane fade show active dynamic-page-meta" id="v-pills-home"
             role="tabpanel" aria-labelledby="v-pills-home-tab">
            <div class="form-group">
                <label for="title"><?php echo e(__('Meta Title')); ?></label>
                <input type="text" class="form-control" name="meta_title"
                       placeholder="<?php echo e(__('Title')); ?>">
            </div>
            <div class="form-group">
                <label for="slug"><?php echo e(__('Meta Tags')); ?></label>
                <input type="text" class="form-control" name="meta_tags"
                       placeholder="Slug" data-role="tagsinput">
            </div>

            <div class="row">
                <div class="form-group col-md-12">
                    <label for="title"><?php echo e(__('Meta Description')); ?></label>
                    <textarea name="meta_description"
                              class="form-control max-height-140"
                              cols="20"
                              rows="4"></textarea>
                </div>
            </div>

        </div>

        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel"
             aria-labelledby="v-pills-profile-tab">
            <div class="form-group">
                <label for="title"><?php echo e(__('Facebook Meta Tag')); ?></label>
                <input type="text" class="form-control" data-role="tagsinput"
                       name="facebook_meta_tags">
            </div>

            <div class="row">
                <div class="form-group col-md-12">
                    <label for="title"><?php echo e(__('Facebook Meta Description')); ?></label>
                    <textarea name="facebook_meta_description"
                              class="form-control max-height-140"
                              cols="20"
                              rows="4"></textarea>
                </div>
            </div>

            <div class="form-group">
                <label for="image"><?php echo e(__('Facebook Meta Image')); ?></label>
                <div class="media-upload-btn-wrapper">
                    <div class="img-wrap"></div>
                    <input type="hidden" name="facebook_meta_image">
                    <button type="button"
                            class="btn btn-info media_upload_form_btn"
                            data-btntitle="<?php echo e(__('Select Image')); ?>"
                            data-modaltitle="<?php echo e(__('Upload Image')); ?>"
                            data-toggle="modal"
                            data-target="#media_upload_modal">
                        <?php echo e(__('Upload Image')); ?>

                    </button>
                </div>
            </div>
        </div>

        <div class="tab-pane fade" id="v-pills-messages" role="tabpanel"
             aria-labelledby="v-pills-messages-tab">
            <div class="form-group">
                <label for="title"><?php echo e(__('Twitter Meta Tag')); ?></label>
                <input type="text" class="form-control" data-role="tagsinput"
                       name="twitter_meta_tags">
            </div>

            <div class="row">
                <div class="form-group col-md-12">
                    <label for="title"><?php echo e(__('Twitter Meta Description')); ?></label>
                    <textarea name="twitter_meta_description"
                              class="form-control max-height-140"
                              cols="20"
                              rows="4"></textarea>
                </div>
            </div>

            <div class="form-group">
                <label for="image"><?php echo e(__('Twitter Meta Image')); ?></label>
                <div class="media-upload-btn-wrapper">
                    <div class="img-wrap"></div>
                    <input type="hidden" name="twitter_meta_image">
                    <button type="button"
                            class="btn btn-info media_upload_form_btn"
                            data-btntitle="<?php echo e(__('Select Image')); ?>"
                            data-modaltitle="<?php echo e(__('Upload Image')); ?>"
                            data-toggle="modal"
                            data-target="#media_upload_modal">
                        <?php echo e(__('Upload Image')); ?>

                    </button>
                </div>
            </div>
        </div>

    </div>
</div><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/resources/views/components/backend/page-meta-data-create.blade.php ENDPATH**/ ?>