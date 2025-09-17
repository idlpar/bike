<?php

namespace App\Models;

use CodeIgniter\Model;

class Receiving_items_serials extends Model
{
    protected $table = 'receiving_items_serials';
    protected $primaryKey = 'receiving_items_serial_id';
    protected $allowedFields = [
        'receiving_id',
        'item_id',
        'line',
        'engine_number',
        'chassis_number'
    ];
}