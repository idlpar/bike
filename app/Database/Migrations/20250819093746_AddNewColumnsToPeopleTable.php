<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AddNewColumnsToPeopleTable extends Migration
{
    public function up()
    {
        $this->forge->addColumn('people', [
            'father_husband_name' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'mother_name' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'date_of_birth' => [
                'type' => 'DATE',
                'null' => true,
            ],
            'national_id' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'alt_phone_number' => [
                'type'       => 'VARCHAR',
                'constraint' => '255',
                'null'       => true,
            ],
            'present_address' => [
                'type' => 'TEXT',
                'null' => true,
            ],
        ]);
    }

    public function down()
    {
        $this->forge->dropColumn('people', 'father_husband_name');
        $this->forge->dropColumn('people', 'mother_name');
        $this->forge->dropColumn('people', 'date_of_birth');
        $this->forge->dropColumn('people', 'national_id');
        $this->forge->dropColumn('people', 'alt_phone_number');
        $this->forge->dropColumn('people', 'present_address');
    }
}
