<?php
/**
 * @var string $controller_name
 * @var array  $modes
 * @var string $mode
 * @var bool   $show_stock_locations
 * @var array  $stock_locations
 * @var int    $stock_source
 * @var string $stock_destination
 * @var array  $cart
 * @var bool   $items_module_allowed
 * @var float  $total
 * @var string $comment
 * @var bool   $print_after_sale
 * @var string $reference
 * @var array  $payment_options
 * @var array  $config
 */
?>

<?= view('partial/header') ?>

<?php
if (isset($error)) {
    echo '<div class="alert alert-dismissible alert-danger">' . esc($error) . '</div>';
}

if (! empty($warning)) {
    echo '<div class="alert alert-dismissible alert-warning">' . esc($warning) . '</div>';
}

if (isset($success)) {
    echo '<div class="alert alert-dismissible alert-success">' . esc($success) . '</div>';
}
?>

<div id="register_wrapper">

    <!-- Top register controls -->

    <?= form_open("{$controller_name}/changeMode", ['id' => 'mode_form', 'class' => 'form-horizontal panel panel-default']) ?>

    <div class="panel-body form-group">
        <ul>
            <li class="pull-left first_li">
                <label class="control-label"><?= lang(ucfirst($controller_name) . '.mode') ?></label>
            </li>
            <li class="pull-left">
                <?= form_dropdown('mode', $modes, $mode, ['onchange' => "$('#mode_form').submit();", 'class' => 'selectpicker show-menu-arrow', 'data-style' => 'btn-default btn-sm', 'data-width' => 'fit']) ?>
            </li>

            <?php if ($show_stock_locations) { ?>
                <li class="pull-left">
                    <label class="control-label"><?= lang(ucfirst($controller_name) . '.stock_source') ?></label>
                </li>
                <li class="pull-left">
                    <?= form_dropdown('stock_source', $stock_locations, $stock_source, ['onchange' => "$('#mode_form').submit();", 'class' => 'selectpicker show-menu-arrow', 'data-style' => 'btn-default btn-sm', 'data-width' => 'fit']) ?>
                </li>

                <?php if ($mode === 'requisition') { ?>
                    <li class="pull-left">
                        <label class="control-label"><?= lang(ucfirst($controller_name) . '.stock_destination') ?></label>
                    </li>
                    <li class="pull-left">
                        <?= form_dropdown('stock_destination', $stock_locations, $stock_destination, ['onchange' => "$('#mode_form').submit();", 'class' => 'selectpicker show-menu-arrow', 'data-style' => 'btn-default btn-sm', 'data-width' => 'fit']) ?>
                    </li>
            <?php
                }
            }
?>
        </ul>
    </div>

    <?= form_close() ?>

    <?= form_open("{$controller_name}/add", ['id' => 'add_item_form', 'class' => 'form-horizontal panel panel-default']) ?>

    <div class="panel-body form-group">
        <ul>
            <li class="pull-left first_li">
                <label for="item" class="control-label">
                    <?php if ($mode === 'receive' || $mode === 'requisition') { ?>
                        <?= lang(ucfirst($controller_name) . '.find_or_scan_item') ?>
                    <?php } else { ?>
                        <?= lang(ucfirst($controller_name) . '.find_or_scan_item_or_receipt') ?>
                    <?php } ?>
                </label>
            </li>

            <li class="pull-left">
                <?= form_input(['name' => 'item', 'id' => 'item', 'class' => 'form-control input-sm', 'size' => '50', 'tabindex' => '1']) ?>
            </li>

            <li class="pull-right">
                <button id="new_item_button" class="btn btn-info btn-sm pull-right modal-dlg" data-btn-submit="<?= lang('Common.submit') ?>" data-btn-new="<?= lang('Common.new') ?>" data-href="<?= 'items/view' ?>" title="<?= lang('Sales.new_item') ?>">
                    <span class="glyphicon glyphicon-tag">&nbsp;</span><?= lang('Sales.new_item') ?>
                </button>
            </li>
        </ul>
    </div>

    <?= form_close() ?>

    <!-- Receiving Items List -->

    <table class="sales_table_100" id="register">
        <thead>
            <tr>
                <th style="width: 5%;"><?= lang('Common.delete') ?></th>
                <th style="width: 15%;"><?= lang('Sales.item_number') ?></th>
                <th style="width: 20%;"><?= lang(ucfirst($controller_name) . '.item_name') ?></th>
                <th style="width: 10%;"><?= lang(ucfirst($controller_name) . '.cost') ?></th>
                <th style="width: 10%;"><?= lang(ucfirst($controller_name) . '.sale_price') ?></th>
                <th style="width: 8%;"><?= lang(ucfirst($controller_name) . '.quantity') ?></th>
                <th style="width: 10%;"><?= lang(ucfirst($controller_name) . '.ship_pack') ?></th>
                <th style="width: 12%;"><?= lang(ucfirst($controller_name) . '.discount') ?></th>
                <th style="width: 10%;"><?= lang(ucfirst($controller_name) . '.total') ?></th>
                <th style="width: 5%;"><?= lang(ucfirst($controller_name) . '.update') ?></th>
            </tr>
        </thead>

        <tbody id="cart_contents">
            <?php if (count($cart) === 0) { ?>
                <tr>
                    <td colspan="10">
                        <div class="alert alert-dismissible alert-info"><?= lang('Sales.no_items_in_cart') ?></div>
                    </td>
                </tr>
                <?php
            } else {
                foreach (array_reverse($cart, true) as $line => $item) {
                    ?>

                    <?= form_open("{$controller_name}/editItem/{$line}", ['class' => 'form-horizontal', 'id' => "cart_{$line}"]) ?>

                    <tr>
                        <td><?= anchor("{$controller_name}/deleteItem/{$line}", '<span class="glyphicon glyphicon-trash"></span>') ?></td>
                        <td><?= esc($item['item_number']) ?></td>
                        <td style="text-align: center;">
                            <?= esc($item['name'] . ' ' . implode(' ', [$item['attribute_values'], $item['attribute_dtvalues']])) ?><br>
                            <?= '[' . to_quantity_decimals($item['in_stock']) . ' in ' . $item['stock_name'] . ']' ?>
                            <?= form_hidden('location', (string) $item['item_location']) ?>
                        </td>

                        <?php if ($items_module_allowed && $mode !== 'requisition') { ?>
                            <td>
                                <?= form_input([
                                        'name'    => 'price',
                                        'class'   => 'form-control input-sm',
                                        'value'   => to_currency_no_money($item['price']),
                                        'onClick' => 'this.select();',
                                    ]) ?>
                            </td>
                            <td>
                                <?= form_input([
                                        'name'    => 'unit_price',
                                        'class'   => 'form-control input-sm',
                                        'value'   => to_currency_no_money($item['unit_price'] ?? 0),
                                        'onClick' => 'this.select();',
                                    ]) ?>
                            </td>
                        <?php } else { ?>
                            <td>
                                <?= $item['price'] ?>
                                <?= form_hidden('price', to_currency_no_money($item['price'])) ?>
                            </td>
                             <td>
                                <?= to_currency_no_money($item['unit_price'] ?? 0) ?>
                                <?= form_hidden('unit_price', to_currency_no_money($item['unit_price'] ?? 0)) ?>
                            </td>
                        <?php } ?>

                        <td>
                            <?= form_input(['name' => 'quantity', 'class' => 'form-control input-sm', 'value' => to_quantity_decimals($item['quantity']), 'onClick' => 'this.select();']) ?>
                        </td>
                        <td>
                            <?= form_dropdown(
                                'receiving_quantity',
                                $item['receiving_quantity_choices'],
                                $item['receiving_quantity'],
                                ['class' => 'form-control input-sm'],
                            ) ?>
                        </td>

                        <?php if ($items_module_allowed && $mode !== 'requisition') { ?>
                            <td>
                                <div class="input-group">
                                    <?= form_input(['name' => 'discount', 'class' => 'form-control input-sm', 'value' => $item['discount_type'] ? to_currency_no_money($item['discount']) : to_decimals($item['discount']), 'onClick' => 'this.select();']) ?>
                                    <span class="input-group-btn">
                                        <?= form_checkbox([
                                            'id'           => 'discount_toggle',
                                            'name'         => 'discount_toggle',
                                            'value'        => 1,
                                            'data-toggle'  => 'toggle',
                                            'data-size'    => 'small',
                                            'data-onstyle' => 'success',
                                            'data-on'      => '<b>' . $config['currency_symbol'] . '</b>',
                                            'data-off'     => '<b>%</b>',
                                            'data-line'    => $line,
                                            'checked'      => $item['discount_type'] === 1,
                                        ]) ?>
                                    </span>
                                </div>
                            </td>
                        <?php } else { ?>
                            <td><?= $item['discount'] ?></td>
                            <?= form_hidden('discount', (string) $item['discount']) ?>
                        <?php } ?>
                        <td>
                            <?= to_currency(($item['discount_type'] === PERCENT) ? $item['price'] * $item['quantity'] * $item['receiving_quantity'] - $item['price'] * $item['quantity'] * $item['receiving_quantity'] * $item['discount'] / 100 : $item['price'] * $item['quantity'] * $item['receiving_quantity'] - $item['discount']) ?>
                        </td>
                        <td>
                            <a href="javascript:$('#<?= esc("cart_{$line}", 'js') ?>').submit();" title=<?= lang(ucfirst($controller_name) . '.update') ?>>
                                <span class="glyphicon glyphicon-refresh"></span>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <?php if ($item['allow_alt_description'] == 1) {
                            ?>
                            <td style="color: #2F4F4F;"><?= lang('Sales.description_abbrv') . ':' ?></td>
                        <?php } ?>
                        <td colspan="2" style="text-align: left;">
                            <?php
                                if ($item['allow_alt_description'] == 1) {
                                    echo form_input([
                                        'name'  => 'description',
                                        'class' => 'form-control input-sm',
                                        'value' => $item['description'],
                                    ]);
                                } else {
                                    if ($item['description'] != '') {
                                        echo $item['description'];
                                        echo form_hidden('description', $item['description']);
                                    } else {
                                        echo '<i>' . lang('Sales.no_description') . '</i>';
                                        echo form_hidden('description', '');
                                    }
                                }
                    ?>
                        </td>
                        <td colspan="7"></td>
                    </tr>

                    <?php if ($item['allow_alt_description'] == 1 && $item['is_serialized'] == 1) { ?>
                        <tr>
                            <td colspan="9">
                                <div class="chassis_engine_container">
                                    <div class="chassis_engine_row" style="display: flex; gap: 10px;">
                                    <input type="text" class="form-control input-sm chassis_number" placeholder="Chassis Number" style="flex: 1;">
                                    <input type="text" class="form-control input-sm engine_number" placeholder="Engine Number" style="flex: 1;">
                                    <button type="button" class="btn btn-primary btn-sm add_chassis_engine">Add More</button>
                                </div>
                                    <div class="added_chassis_engine">
                                        <?php if (!empty($item['chassis_numbers']) && !empty($item['engine_numbers'])): ?>
                                            <?php foreach (array_map(null, $item['chassis_numbers'], $item['engine_numbers']) as [$chassis_number, $engine_number]): ?>
                                                <div class='added_row' style='display: flex; align-items: center; margin-bottom: 5px;'>
                                                    <span style='margin-right: 10px;'>Chassis: <?= esc($chassis_number) ?>, Engine: <?= esc($engine_number) ?></span>
                                                    <a href='#' class='btn btn-danger btn-xs remove_chassis_engine'><span class='glyphicon glyphicon-trash'></span></a>
                                                    <input type='hidden' name='chassis_numbers[]' value='<?= esc($chassis_number, 'attr') ?>'>
                                                    <input type='hidden' name='engine_numbers[]' value='<?= esc($engine_number, 'attr') ?>'>
                                                </div>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    <?php } ?>

                    <?= form_close() ?>

            <?php
                }
            }
?>
        </tbody>
    </table>
</div>

<!-- Overall Receiving -->

<div id="overall_sale" class="panel panel-default">
    <div class="panel-body">
        <?php if (isset($supplier)) { ?>

            <table class="sales_table_100">
                <tr>
                    <th style="width: 55%;"><?= lang(ucfirst($controller_name) . '.supplier') ?></th>
                    <th style="width: 45%; text-align: right;"><?= esc($supplier) ?></th>
                </tr>
                <?php if (! empty($supplier_email)) { ?>
                    <tr>
                        <th style="width: 55%;"><?= lang(ucfirst($controller_name) . '.supplier_email') ?></th>
                        <th style="width: 45%; text-align: right;"><?= esc($supplier_email) ?></th>
                    </tr>
                <?php } ?>
                <?php if (! empty($supplier_address)) { ?>
                    <tr>
                        <th style="width: 55%;"><?= lang(ucfirst($controller_name) . '.supplier_address') ?></th>
                        <th style="width: 45%; text-align: right;"><?= esc($supplier_address) ?></th>
                    </tr>
                <?php } ?>
                <?php if (! empty($supplier_location)) { ?>
                    <tr>
                        <th style="width: 55%;"><?= lang(ucfirst($controller_name) . '.supplier_location') ?></th>
                        <th style="width: 45%; text-align: right;"><?= esc($supplier_location) ?></th>
                    </tr>
                <?php } ?>
            </table>

            <?= anchor(
                "{$controller_name}/removeSupplier",
                '<span class="glyphicon glyphicon-remove">&nbsp;</span>' . lang('Common.remove') . ' ' . lang('Suppliers.supplier'),
                [
                    'class' => 'btn btn-danger btn-sm',
                    'id'    => 'remove_supplier_button',
                    'title' => lang('Common.remove') . ' ' . lang('Suppliers.supplier'),
                ],
            ) ?>

        <?php } else { ?>

            <?= form_open("{$controller_name}/selectSupplier", ['id' => 'select_supplier_form', 'class' => 'form-horizontal']) ?>

            <div class="form-group" id="select_customer">
                <label id="supplier_label" for="supplier" class="control-label" style="margin-bottom: 1em; margin-top: -1em;">
                    <?= lang(ucfirst($controller_name) . '.select_supplier') ?>
                </label>
                <?= form_input([
                    'name'  => 'supplier',
                    'id'    => 'supplier',
                    'class' => 'form-control input-sm',
                    'value' => lang(ucfirst($controller_name) . '.start_typing_supplier_name'),
                ]) ?>

                <button id="new_supplier_button" class="btn btn-info btn-sm modal-dlg" data-btn-submit="<?= lang('Common.submit') ?>" data-href="<?= 'suppliers/view' ?>" title="<?= lang(ucfirst($controller_name) . '.new_supplier') ?>">
                    <span class="glyphicon glyphicon-user">&nbsp;</span><?= lang(ucfirst($controller_name) . '.new_supplier') ?>
                </button>

            </div>

            <?= form_close() ?>

        <?php } ?>

        <table class="sales_table_100" id="sale_totals">
            <tr>
                <?php if ($mode !== 'requisition') { ?>
                    <th style="width: 55%;"><?= lang('Sales.total') ?></th>
                    <th style="width: 45%; text-align: right;"><?= to_currency($total) ?></th>
                <?php } else { ?>
                    <th style="width: 55%;"></th>
                    <th style="width: 45%; text-align: right;"></th>
                <?php } ?>
            </tr>
        </table>

        <?php if (count($cart) > 0) { ?>
            <div id="finish_sale">
                <?php if ($mode === 'requisition') { ?>

                    <?= form_open("{$controller_name}/requisitionComplete", ['id' => 'finish_receiving_form', 'class' => 'form-horizontal']) ?>

                    <div class="form-group form-group-sm">
                        <label id="comment_label" for="comment"><?= lang('Common.comments') ?></label>
                        <?= form_textarea([
                            'name'  => 'comment',
                            'id'    => 'comment',
                            'class' => 'form-control input-sm',
                            'value' => $comment,
                            'rows'  => '4',
                        ]) ?>

                        <div class="btn btn-sm btn-danger pull-left" id="cancel_receiving_button">
                            <span class="glyphicon glyphicon-remove">&nbsp;</span><?= lang(ucfirst($controller_name) . '.cancel_receiving') ?>
                        </div>
                        <div class="btn btn-sm btn-success pull-right" id="finish_receiving_button">
                            <span class="glyphicon glyphicon-ok">&nbsp;</span><?= lang(ucfirst($controller_name) . '.complete_receiving') ?>
                        </div>
                    </div>

                    <?= form_close() ?>

                <?php } else { ?>

                    <?= form_open("{$controller_name}/complete", ['id' => 'finish_receiving_form', 'class' => 'form-horizontal']) ?>

                    <div class="form-group form-group-sm">
                        <label id="comment_label" for="comment"><?= lang('Common.comments') ?></label>
                        <?= form_textarea([
                            'name'  => 'comment',
                            'id'    => 'comment',
                            'class' => 'form-control input-sm',
                            'value' => $comment,
                            'rows'  => '4',
                        ]) ?>
                        <div id="payment_details">
                            <table class="sales_table_100">
                                <tr>
                                    <td><?= lang(ucfirst($controller_name) . '.print_after_sale') ?></td>
                                    <td>
                                        <?= form_checkbox([
                                            'name'    => 'recv_print_after_sale',
                                            'id'      => 'recv_print_after_sale',
                                            'class'   => 'checkbox',
                                            'value'   => 1,
                                            'checked' => $print_after_sale === 1,
                                        ]) ?>
                                    </td>
                                </tr>
                                <?php if ($mode === 'receive') { ?>
                                    <tr>
                                        <td><?= lang(ucfirst($controller_name) . '.reference') ?></td>
                                        <td>
                                            <?= form_input([
                                                'name'  => 'recv_reference',
                                                'id'    => 'recv_reference',
                                                'class' => 'form-control input-sm',
                                                'value' => $reference,
                                                'size'  => 5,
                                            ]) ?>
                                        </td>
                                    </tr>
                                <?php } ?>
                                <tr>
                                    <td><?= lang('Sales.payment') ?></td>
                                    <td>
                                        <?= form_dropdown(
                                            'payment_type',
                                            $payment_options,
                                            [],
                                            [
                                                'id'         => 'payment_types',
                                                'class'      => 'selectpicker show-menu-arrow',
                                                'data-style' => 'btn-default btn-sm',
                                                'data-width' => 'auto',
                                            ],
                                        ) ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?= lang('Sales.amount_tendered') ?></td>
                                    <td>
                                        <?= form_input([
                                            'name'  => 'amount_tendered',
                                            'value' => '',
                                            'class' => 'form-control input-sm',
                                            'size'  => '5',
                                        ]) ?>
                                    </td>
                                </tr>
                            </table>
                        </div>

                        <div class="btn btn-sm btn-danger pull-left" id="cancel_receiving_button">
                            <span class="glyphicon glyphicon-remove">&nbsp;</span><?= lang(ucfirst($controller_name) . '.cancel_receiving') ?>
                        </div>
                        <div class="btn btn-sm btn-success pull-right" id="finish_receiving_button">
                            <span class="glyphicon glyphicon-ok">&nbsp;</span><?= lang(ucfirst($controller_name) . '.complete_receiving') ?>
                        </div>
                    </div>

                    <?= form_close() ?>

                <?php } ?>
            </div>
        <?php } ?>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $("#item").autocomplete({
            source: '<?= esc("{$controller_name}/stockItemSearch") ?>',
            minChars: 0,
            delay: 10,
            autoFocus: false,
            select: function(a, ui) {
                $(this).val(ui.item.value);
                $("#add_item_form").submit();
                return false;
            }
        });

        $('#item').focus();

        $('#item').keypress(function(e) {
            if (e.which == 13) {
                $('#add_item_form').submit();
                return false;
            }
        });

        $('#item').blur(function() {
            $(this).attr('value', "<?= lang('Sales.start_typing_item_name') ?>");
        });

        $('#comment').keyup(function() {
            $.post('<?= esc("{$controller_name}/setComment") ?>', {
                comment: $('#comment').val()
            });
        });

        $('#recv_reference').keyup(function() {
            $.post('<?= esc("{$controller_name}/setReference") ?>', {
                recv_reference: $('#recv_reference').val()
            });
        });

        $("#recv_print_after_sale").change(function() {
            $.post('<?= esc("{$controller_name}/setPrintAfterSale") ?>', {
                recv_print_after_sale: $(this).is(":checked")
            });
        });

        $('#item,#supplier').click(function() {
            $(this).attr('value', '');
        });

        $("#supplier").autocomplete({
            source: '<?= 'suppliers/suggest' ?>',
            minChars: 0,
            delay: 10,
            select: function(a, ui) {
                $(this).val(ui.item.value);
                $("#select_supplier_form").submit();
            }
        });

        dialog_support.init("a.modal-dlg, button.modal-dlg");

        $('#supplier').blur(function() {
            $(this).attr('value', "<?= lang(ucfirst($controller_name) . '.start_typing_supplier_name') ?>");
        });

        $("#finish_receiving_button").click(function() {
            $('#finish_receiving_form').submit();
        });

        $("#cancel_receiving_button").click(function() {
            if (confirm('<?= lang(ucfirst($controller_name) . '.confirm_cancel_receiving') ?>')) {
                $('#finish_receiving_form').attr('action', '<?= esc("{$controller_name}/cancelReceiving") ?>');
                $('#finish_receiving_form').submit();
            }
        });

        $("#cart_contents input").keypress(function(event) {
            if (event.which == 13) {
                $(this).parents("tr").prevAll("form:first").submit();
            }
        });

        table_support.handle_submit = function(resource, response, stay_open) {
            if (response.success) {
                if (resource.match(/suppliers$/)) {
                    $("#supplier").val(response.id);
                    $("#select_supplier_form").submit();
                } else {
                    $("#item").val(response.id);
                    if (stay_open) {
                        $("#add_item_form").ajaxSubmit();
                    } else {
                        $("#add_item_form").submit();
                    }
                }
            }
        }

        $('[name="price"],[name="unit_price"],[name="quantity"],[name="receiving_quantity"],[name="discount"],[name="description"],[name="serialnumber"]').change(function() {
            $(this).parents("tr").prevAll("form:first").submit()
        });

        // Function to ensure visible chassis/engine inputs are submitted
        function prepareChassisEngineForSubmission(form) {
            var chassisInput = form.find(".chassis_number");
            var engineInput = form.find(".engine_number");

            if (chassisInput.val().trim() !== "" && engineInput.val().trim() !== "") {
                // Create hidden inputs for the current visible values
                var hiddenChassis = $("<input>")
                    .attr("type", "hidden")
                    .attr("name", "chassis_numbers[]")
                    .val(chassisInput.val().trim());
                var hiddenEngine = $("<input>")
                    .attr("type", "hidden")
                    .attr("name", "engine_numbers[]")
                    .val(engineInput.val().trim());

                form.append(hiddenChassis);
                form.append(hiddenEngine);

                // Clear the visible inputs to prevent duplicate submission if "Add More" was also clicked
                chassisInput.val("");
                engineInput.val("");
            }
        }

        // Attach this function to form submissions
        $("form[id^='cart_']").submit(function() {
            prepareChassisEngineForSubmission($(this));
        });

        $('[name="discount_toggle"]').change(function() {
            var input = $("<input>").attr("type", "hidden").attr("name", "discount_type").val(($(this).prop('checked')) ? 1 : 0);
            $('#cart_' + $(this).attr('data-line')).append($(input));
            $('#cart_' + $(this).attr('data-line')).submit();
        });

        $(".add_chassis_engine").on("click", function() {
            var container = $(this).closest(".chassis_engine_container");
            var chassis_number = container.find(".chassis_number").val().trim();
            var engine_number = container.find(".engine_number").val().trim();
            var quantity = parseInt($(this).closest("tr").prev().prev().find("input[name='quantity']").val());
            var added_items_count = container.find(".added_chassis_engine .added_row").length;

            if (chassis_number !== "" && engine_number !== "") {
                if (added_items_count < quantity) {
                    var new_row = "<div class='added_row' style='display: flex; align-items: center; margin-bottom: 5px;'>" +
                        "<span style='margin-right: 10px;'>Chassis: " + chassis_number + ", Engine: " + engine_number + "</span>" +
                        "<a href='#' class='btn btn-danger btn-xs remove_chassis_engine'><span class='glyphicon glyphicon-trash'></span></a>" +
                        "<input type='hidden' name='chassis_numbers[]' value='" + chassis_number + "'>" +
                        "<input type='hidden' name='engine_numbers[]' value='" + engine_number + "'>" +
                        "</div>";

                    container.find(".added_chassis_engine").append(new_row);
                    container.find(".chassis_number").val("");
                    container.find(".engine_number").val("");

                    if (added_items_count + 1 === quantity) {
                        container.find(".chassis_engine_row").hide();
                    }

                    $(this).closest("form").submit();
                } else {
                    alert("You have already added the maximum quantity of items.");
                }
            } else {
                alert("Please enter both Chassis and Engine numbers.");
            }
        });

        $(document).on("click", ".remove_chassis_engine", function(e) {
            e.preventDefault();
            var container = $(this).closest(".chassis_engine_container");
            $(this).parent().remove();
            var added_items_count = container.find(".added_chassis_engine .added_row").length;
            var quantity = parseInt(container.closest("tr").prev().prev().find("input[name='quantity']").val());
            if (added_items_count < quantity) {
                container.find(".chassis_engine_row").show();
            }
        });

    });
</script>

<?= view('partial/footer') ?>
