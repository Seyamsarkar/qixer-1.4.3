
<script>
    (function($){
        "use strict";

        $(document).ready(function(){

            $(document).on('change','#search_by_category_job',function(e){
                e.preventDefault();
                $('#search_job_list_form').trigger('submit');
            })

            $(document).on('change','#search_by_subcategory_job',function(e){
                e.preventDefault();
                $('#search_job_list_form').trigger('submit');
            })

            $(document).on('change','#search_by_child_category_job',function(e){
                e.preventDefault();
                $('#search_job_list_form').trigger('submit');
            })

            $(document).on('change','#search_by_country_job',function(e){
                e.preventDefault();
                $('#search_job_list_form').trigger('submit');
            })

            $(document).on('change','#search_by_city_job',function(e){
                e.preventDefault();
                $('#search_job_list_form').trigger('submit');
            })

            $(document).on('change','#search_by_job_ad',function(e){
                e.preventDefault();
                $('#search_job_list_form').trigger('submit');
            })

            $(document).on('change','#search_by_sorting_job',function(e){
                e.preventDefault();
                $('#search_job_list_form').trigger('submit');
            })

        });
    })(jQuery);
</script>

<?php /**PATH /home/bytesed/public_html/laravel/qixer/@core/Modules/JobPost/Resources/views/frontend/jobs/job-search.blade.php ENDPATH**/ ?>