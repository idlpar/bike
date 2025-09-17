<?php
/**
 * @var array $suspended_sales
 * @var array $config
 */

use App\Models\Customer;
use App\Models\Employee;

$this->dinner_table = model(Dinner_table::class);
?>

<style>
    @media (min-width: 768px) {
        .modal-dlg .modal-dialog {
            width: 900px !important;
        }
    }

    #suspended_sales_table ul {
        list-style-type: none;
        padding-left: 0;
    }

    #suspended_sales_table li {
        padding-left: 1.3em;
        text-indent: -1.3em;
    }

    #suspended_sales_table li::before {
        content: "\25B8"; /* Right-pointing small triangle */
        color: #007bff; /* Bootstrap primary color */
        padding-right: 0.5em;
    }
</style>

<table id="suspended_sales_table" class="table table-striped table-hover">
    <thead>
        <tr style="background-color: #ccc;">
            <th><?= lang('Sales.suspended_doc_id') ?></th>
            <th><?= lang('Sales.date') ?></th>
            <?php if ($config['dinner_table_enable']) { ?>
                <th><?= lang('Sales.table') ?></th>
            <?php } ?>
            <th><?= lang('Sales.customer') ?></th>
            <th><?= lang('Sales.employee') ?></th>
            <th><?= lang('Sales.items') ?></th>
            <th><?= lang('Sales.unsuspend_and_delete') ?></th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($suspended_sales as $suspended_sale) { ?>
            <tr>
                <td><?= $suspended_sale['doc_id'] ?></td>
                <td><?= date($config['dateformat'], strtotime($suspended_sale['sale_time'])) ?></td>
                <?php if ($config['dinner_table_enable']) { ?>
                    <td><?= esc($this->dinner_table->get_name($suspended_sale['dinner_table_id'])) ?></td>
                <?php } ?>
                <td>
                    <?php
                    if (isset($suspended_sale['customer_id'])) {
                        $customer      = model(Customer::class);
                        $customer_data = $customer->get_info($suspended_sale['customer_id']);
                        echo esc("{$customer_data->first_name} {$customer_data->last_name}");
                    } else {
                        ?>
                        &nbsp;
                    <?php } ?>
                </td>
                <td>
                    <?php
                        if (isset($suspended_sale['employee_id'])) {
                            $employee      = model(Employee::class);
                            $employee_data = $employee->get_info($suspended_sale['employee_id']);
                            echo esc("{$employee_data->first_name} {$employee_data->last_name}");
                        } else {
                            ?>
                        &nbsp;
                    <?php } ?>
                </td>
                <td>
                    <ul>
                        <?php foreach ($suspended_sale['items'] as $item) { ?>
                            <li><?= $item['name'] . ' (x' . (int)$item['quantity_purchased'] . ')' ?></li>
                        <?php } ?>
                    </ul>
                </td>
                <td>
                    <?= form_open('sales/unsuspend') ?>
                    <?= form_hidden('suspended_sale_id', $suspended_sale['sale_id']) ?>
                    <input type="submit" name="submit" value="<?= lang('Sales.unsuspend') ?>" id="submit" class="btn btn-primary btn-xs pull-right">
                    <?= form_close() ?>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>