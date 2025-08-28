<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class CreateReceivingItemsSerials extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'receiving_item_serial_id' => [
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
            'chassis_number' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
            ],
            'engine_number' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
            ],
            'created_at' => [
                'type' => 'DATETIME',
                'null' => true,
            ],
            'updated_at' => [
                'type' => 'DATETIME',
                'null' => true,
            ],
            'deleted_at' => [
                'type' => 'DATETIME',
                'null' => true,
            ],
        ]);
        $this->forge->addKey('receiving_item_serial_id', true);
        $this->forge->addForeignKey(['receiving_id', 'item_id', 'line'], 'receivings_items', ['receiving_id', 'item_id', 'line'], 'CASCADE', 'CASCADE');
        $this->forge->createTable('receiving_items_serials');
    }

    public function down()
    {
        $this->forge->dropTable('receiving_items_serials');
    }
}