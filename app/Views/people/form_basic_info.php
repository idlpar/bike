<?php
/**
 * @var object $person_info
 * @var array $config
 */
?>

<div class="form-group form-group-sm">
    <?= form_label(lang('Common.first_name'), 'first_name', ['class' => 'required control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_input([
            'name'  => 'first_name',
            'id'    => 'first_name',
            'class' => 'form-control input-sm',
            'value' => $person_info->first_name
        ]) ?>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Common.last_name'), 'last_name', ['class' => 'required control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_input([
            'name'  => 'last_name',
            'id'    => 'last_name',
            'class' => 'form-control input-sm',
            'value' => $person_info->last_name
        ]) ?>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Customers.father_husband_name'), 'father_husband_name', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_input([
            'name'  => 'father_husband_name',
            'id'    => 'father_husband_name',
            'class' => 'form-control input-sm',
            'value' => $person_info->father_husband_name
        ]) ?>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Customers.mother_name'), 'mother_name', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_input([
            'name'  => 'mother_name',
            'id'    => 'mother_name',
            'class' => 'form-control input-sm',
            'value' => $person_info->mother_name
        ]) ?>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Customers.date_of_birth'), 'date_of_birth', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <div class="input-group">
            <span class="input-group-addon input-sm"><span class="glyphicon glyphicon-calendar"></span></span>
            <?= form_input([
                'name'  => 'date_of_birth',
                'id'    => 'date_of_birth',
                'class' => 'form-control input-sm',
                'value' => $person_info->date_of_birth
            ]) ?>
        </div>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Customers.national_id'), 'national_id', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_input([
            'name'  => 'national_id',
            'id'    => 'national_id',
            'class' => 'form-control input-sm',
            'value' => $person_info->national_id
        ]) ?>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Common.gender'), 'gender', !empty($basic_version) ? ['class' => 'required control-label col-xs-3'] : ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <label class="radio-inline">
            <?= form_radio([
                'name'    => 'gender',
                'type'    => 'radio',
                'id'      => 'gender_male',
                'value'   => 1,
                'checked' => $person_info->gender === '1'
            ]) ?> <?= lang('Common.gender_male') ?>
        </label>
        <label class="radio-inline">
            <?= form_radio([
                'name'    => 'gender',
                'type'    => 'radio',
                'id'      => 'gender_female',
                'value'   => 0,
                'checked' => $person_info->gender === '0'
            ]) ?> <?= lang('Common.gender_female') ?>
        </label>
        <label class="radio-inline">
            <?= form_radio([
                'name'    => 'gender',
                'type'    => 'radio',
                'id'      => 'gender_other',
                'value'   => 2,
                'checked' => $person_info->gender === '2'
            ]) ?> <?= lang('Customers.gender_other') ?>
        </label>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Customers.customer_type'), 'customer_type', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <label class="radio-inline">
            <?= form_radio([
                'name'    => 'customer_type',
                'type'    => 'radio',
                'id'      => 'customer_type_private',
                'value'   => 'private',
                'checked' => $person_info->customer_type === 'private'
            ]) ?> <?= lang('Customers.customer_type_private') ?>
        </label>
        <label class="radio-inline">
            <?= form_radio([
                'name'    => 'customer_type',
                'type'    => 'radio',
                'id'      => 'customer_type_organization',
                'value'   => 'organization',
                'checked' => $person_info->customer_type === 'organization'
            ]) ?> <?= lang('Customers.customer_type_organization') ?>
        </label>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Common.email'), 'email', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <div class="input-group">
            <span class="input-group-addon input-sm"><span class="glyphicon glyphicon-envelope"></span></span>
            <?= form_input([
                'name'  => 'email',
                'id'    => 'email',
                'class' => 'form-control input-sm',
                'value' => $person_info->email
            ]) ?>
        </div>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Common.phone_number'), 'phone_number', ['class' => 'required control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <div class="input-group">
            <span class="input-group-addon input-sm"><span class="glyphicon glyphicon-phone-alt"></span></span>
            <?= form_input([
                'name'  => 'phone_number',
                'id'    => 'phone_number',
                'class' => 'form-control input-sm',
                'value' => $person_info->phone_number
            ]) ?>
        </div>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Customers.alternative_phone_number'), 'alternative_phone_number', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <div class="input-group">
            <span class="input-group-addon input-sm"><span class="glyphicon glyphicon-phone-alt"></span></span>
            <?= form_input([
                'name'  => 'alternative_phone_number',
                'id'    => 'alternative_phone_number',
                'class' => 'form-control input-sm',
                'value' => $person_info->alternative_phone_number
            ]) ?>
        </div>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Customers.village'), 'village', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_input([
            'name'  => 'village',
            'id'    => 'village',
            'class' => 'form-control input-sm',
            'value' => $person_info->village
        ]) ?>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Customers.post_office'), 'post_office', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_input([
            'name'  => 'post_office',
            'id'    => 'post_office',
            'class' => 'form-control input-sm',
            'value' => $person_info->post_office
        ]) ?>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Customers.thana_upazilla'), 'thana_upazilla', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_input([
            'name'  => 'thana_upazilla',
            'id'    => 'thana_upazilla',
            'class' => 'form-control input-sm',
            'value' => $person_info->thana_upazilla
        ]) ?>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Common.zip'), 'zip', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_input([
            'name'  => 'zip',
            'id'    => 'postcode',
            'class' => 'form-control input-sm',
            'value' => $person_info->zip
        ]) ?>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Customers.district'), 'district', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_input([
            'name'  => 'district',
            'id'    => 'district',
            'class' => 'form-control input-sm',
            'value' => $person_info->district
        ]) ?>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Customers.division'), 'division', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_input([
            'name'  => 'division',
            'id'    => 'division',
            'class' => 'form-control input-sm',
            'value' => $person_info->division
        ]) ?>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Customers.present_address'), 'present_address', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_textarea([
            'name'  => 'present_address',
            'id'    => 'present_address',
            'class' => 'form-control input-sm',
            'value' => $person_info->present_address
        ]) ?>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Common.comments'), 'comments', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_textarea([
            'name'  => 'comments',
            'id'    => 'comments',
            'class' => 'form-control input-sm',
            'value' => $person_info->comments
        ]) ?>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Customers.customer_group'), 'customer_group', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_input([
            'name'  => 'customer_group',
            'id'    => 'customer_group',
            'class' => 'form-control input-sm',
            'value' => $person_info->customer_group
        ]) ?>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Customers.customer_company'), 'customer_company', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_input([
            'name'  => 'customer_company',
            'id'    => 'customer_company',
            'class' => 'form-control input-sm',
            'value' => $person_info->customer_company
        ]) ?>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Customers.init_amount'), 'init_amount', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_input([
            'name'  => 'init_amount',
            'id'    => 'init_amount',
            'class' => 'form-control input-sm',
            'value' => $person_info->init_amount
        ]) ?>
    </div>
</div>

<div class="form-group form-group-sm">
    <?= form_label(lang('Customers.account_no'), 'account_no', ['class' => 'control-label col-xs-3']) ?>
    <div class="col-xs-8">
        <?= form_input([
            'name'  => 'account_no',
            'id'    => 'account_no',
            'class' => 'form-control input-sm',
            'value' => $person_info->account_no
        ]) ?>
    </div>
</div>

<script type="text/javascript">
    // Validation and submit handling
    $(document).ready(function() {
        nominatim.init({
            fields: {
                postcode: {
                    dependencies: ["postcode", "city", "state", "country"],
                    response: {
                        field: 'postalcode',
                        format: ["postcode", "village|town|hamlet|city_district|city", "state", "country"]
                    }
                },

                city: {
                    dependencies: ["postcode", "city", "state", "country"],
                    response: {
                        format: ["postcode", "village|town|hamlet|city_district|city", "state", "country"]
                    }
                },

                state: {
                    dependencies: ["state", "country"]
                },

                country: {
                    dependencies: ["state", "country"]
                }
            },
            language: '<?= current_language_code() ?>',
            country_codes: '<?= esc($config['country_codes'], 'js') ?>'
        });
    });
</script>
