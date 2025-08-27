<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AddNewItemColumnsToItemsTable extends Migration
{
    public function up()
    {
        $this->forge->addColumn('items', [
            'color' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'year_of_manufacture' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'horse_power' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'rpm' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'cubic_capacity' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'wheel_base' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'unladen_weight_kg' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'max_laden_train_weight_kg' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'size_of_tyre' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'bike_label' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'number_of_cylinders' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'fuel_used' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'fuel_tank_capacity' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'seats_incl_driver' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'tr_price' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
        ]);
    }

    public function down()
    {
        $this->forge->dropColumn('items', [
            'color',
            'year_of_manufacture',
            'horse_power',
            'rpm',
            'cubic_capacity',
            'wheel_base',
            'unladen_weight_kg',
            'max_laden_train_weight_kg',
            'size_of_tyre',
            'bike_label',
            'number_of_cylinders',
            'fuel_used',
            'fuel_tank_capacity',
            'seats_incl_driver',
            'tr_price',
        ]);
    }
}
