
<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Import Areas')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <br>
    <div class="col-lg-12 col-ml-12 padding-bottom-30 ">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body mt-50">
                        <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.msg.success','data' => []]); ?>
<?php $component->withName('msg.success'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
                        <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.msg.error','data' => []]); ?>
<?php $component->withName('msg.error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
                        <h2 class="title margin-bottom-20"><?php echo e(__('Import Areas')); ?></h2>
                        <?php if(empty($import_data)): ?>
                            <form action="<?php echo e(route('admin.area.import')); ?>" method="post" enctype="multipart/form-data">
                                <?php echo csrf_field(); ?>
                                <div class="form-group">
                                    <label for="#"><?php echo e(__('File')); ?></label>
                                    <input type="file" name="csv_file" accept=".csv" class="form-control" required>
                                    <div class="info-text"><?php echo e(__('only csv file are allowed with separate by (,) comma.')); ?></div>
                                </div>
                                <button type="submit" class="btn btn-info loading-btn"><?php echo e(__('Submit')); ?></button>
                            </form>
                        <?php else: ?>
                            <?php
                                $option_markup = '';
                                    foreach(current($import_data) as $map_item ){
                                        $option_markup .= '<option value="'.trim($map_item).'">'.$map_item.'</option>';
                                    }
                            ?>
                            <form action="<?php echo e(route('admin.area.import.database')); ?>" method="post" enctype="multipart/form-data">
                                <?php echo csrf_field(); ?>
                                <table class="table table-striped">
                                    <thead>
                                    <th style="width: 200px"><?php echo e(__('Field Name')); ?></th>
                                    <th><?php echo e(__('Set Field')); ?></th>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td><h6><?php echo e(__('Country')); ?></h6></td>
                                        <?php $countries = App\Country::where('status',1)->get(); ?>
                                        <td>
                                            <div class="form-group">
                                                <select class="form-control" name="country_id" id="country_id">
                                                    <option value=""><?php echo e(__('Select Country')); ?></option>
                                                    <?php $__currentLoopData = $countries; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $country): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <option value="<?php echo e($country->id); ?>"><?php echo e($country->country); ?></option>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </select>
                                            </div>
                                            <p class="text-info"><?php echo e(__('Select your areas country ')); ?></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><h6><?php echo e(__('City')); ?></h6></td>
                                        <?php $cities = App\ServiceCity::where('status',1)->get(); ?>
                                        <td>
                                            <div class="form-group">
                                                <select name="service_city_id" id="service_city" class="get_service_city form-control">
                                                    <option value=""><?php echo e(__('Select City')); ?></option>
                                                </select>
                                            </div>
                                            <p class="text-info"><?php echo e(__('Select your areas city ')); ?></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><h6><?php echo e(__('Area')); ?></h6></td>
                                        <td>
                                            <div class="form-group">
                                                <select class="form-control mapping_select">
                                                    <option value=""><?php echo e(__('Select Field')); ?></option>
                                                    <?php echo $option_markup; ?>

                                                </select>
                                                <input type="hidden" name="area">
                                            </div>
                                            <p class="text-info"><?php echo e(__('Select area and only unique areas added automatically according to the selected country and city.')); ?></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><h6><?php echo e(__('Status')); ?></h6></td>
                                        <td>
                                            <div class="form-group">
                                                <select class="form-control mapping_select">
                                                    <option value="1"><?php echo e(__('Publish')); ?></option>
                                                    <option value="0"><?php echo e(__('Draft')); ?></option>
                                                </select>
                                                <input type="hidden" name="status" value="1">
                                            </div>
                                        </td>
                                    </tr>

                                    </tbody>
                                </table>
                                <button type="submit" class="btn btn-success loading-btn"><?php echo e(__('Import')); ?></button>
                            </form>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script>
        (function ($){
            "use strict";

            $(document).on('click','.loading-btn',function (){
                $(this).append('<i class="ml-2 fas fa-spinner fa-spin"></i>')
            });

            $(document).on('change','.mapping_select',function (){

                $('.mapping_select option').attr('disabled',false);
                $(this).next('input').val($(this).val());
                var allValue = $('.mapping_select');
                $.each(allValue,function (index,item){
                    $('.mapping_select option[value="'+$(this).val()+'"]').attr('disabled',true);
                });
            })

            // change country and get city
            $('#country_id').on('change',function(){
                let country_id = $(this).val();
                $.ajax({
                    method:'post',
                    url:"<?php echo e(route('admin.area.import.country.city')); ?>",
                    data:{country_id:country_id},
                    success:function(res){
                        if(res.status=='success'){
                            let alloptions = '';
                            let allCity = res.cities;
                            $.each(allCity,function(index,value){
                                alloptions +="<option value='" + value.id + "'>" + value.service_city + "</option>";
                            });
                            $(".get_service_city").html(alloptions);
                        }
                    }
                })
            })

        })(jQuery);
    </script>
<?php $__env->stopSection(); ?>




<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/resources/views/backend/pages/location/area_import.blade.php ENDPATH**/ ?>