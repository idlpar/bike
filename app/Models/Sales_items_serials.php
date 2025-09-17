<?php

namespace App\Models;

use CodeIgniter\Model;

class Sales_items_serials extends Model
{
    protected $table = 'sales_items_serials';
    protected $primaryKey = 'sales_items_serial_id';
    protected $allowedFields = [
        'sale_id',
        'item_id',
        'line',
        'engine_number',
        'chassis_number'
    ];
}
