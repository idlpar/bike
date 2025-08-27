<?php

namespace App\Models;

use CodeIgniter\Model;

class Receiving_items_serials extends Model
{
    protected $table            = 'receiving_items_serials';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $allowedFields    = ['receiving_item_id', 'chassis_number', 'engine_number', 'sold'];

    public function get_available_serials($item_id)
    {
        $builder = $this->db->table('receiving_items_serials');
        $builder->select('receiving_items_serials.*, receivings_items.item_id');
        $builder->join('receivings_items', 'receivings_items.id = receiving_items_serials.receiving_item_id');
        $builder->where('receivings_items.item_id', $item_id);
        $builder->where('receiving_items_serials.sold', 0);

        return $builder->get()->getResultArray();
    }

    public function mark_as_sold($chassis_number, $engine_number)
    {
        $builder = $this->db->table('receiving_items_serials');
        $builder->where('chassis_number', $chassis_number);
        $builder->where('engine_number', $engine_number);
        $builder->update(['sold' => 1]);
    }
}
