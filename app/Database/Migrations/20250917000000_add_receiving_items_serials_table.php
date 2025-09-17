<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AddOsposReceivingItemsSerialsTable extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'receiving_items_serial_id' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
                'auto_increment' => true,
            ],
            'receiving_id' => [
                'type'       => 'INT',
                'constraint' => 10,
            ],
            'item_id' => [
                'type'       => 'INT',
                'constraint' => 10,
            ],
            'line' => [
                'type'       => 'INT',
                'constraint' => 3,
            ],
            'engine_number' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
            ],
            'chassis_number' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
            ],
        ]);
        $this->forge->addKey('receiving_items_serial_id', true);
        $this->forge->createTable('receiving_items_serials');
    }

    public function down()
    {
        $this->forge->dropTable('receiving_items_serials');
    }
}
