<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AddExtraFieldsToCustomers extends Migration
{
    public function up()
    {
        $this->forge->addColumn('people', [
            'father_husband_name' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => true,
            ],
            'mother_name' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => true,
            ],
            'date_of_birth' => [
                'type' => 'DATE',
                'null' => true,
            ],
            'national_id' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => true,
            ],
            'alternative_phone_number' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => true,
            ],
            'village' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => true,
            ],
            'post_office' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => true,
            ],
            'thana_upazilla' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => true,
            ],
            'district' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => true,
            ],
            'division' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => true,
            ],
            'present_address' => [
                'type' => 'TEXT',
                'null' => true,
            ],
        ]);

        $this->forge->addColumn('customers', [
            'customer_type' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => true,
            ],
            'customer_group' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => true,
            ],
            'customer_company' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
                'null' => true,
            ],
            'init_amount' => [
                'type' => 'DECIMAL',
                'constraint' => '15,2',
                'null' => true,
            ],
            'account_no' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
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
        $this->forge->dropColumn('people', 'alternative_phone_number');
        $this->forge->dropColumn('people', 'village');
        $this->forge->dropColumn('people', 'post_office');
        $this->forge->dropColumn('people', 'thana_upazilla');
        $this->forge->dropColumn('people', 'district');
        $this->forge->dropColumn('people', 'division');
        $this->forge->dropColumn('people', 'present_address');

        $this->forge->dropColumn('customers', 'customer_type');
        $this->forge->dropColumn('customers', 'customer_group');
        $this->forge->dropColumn('customers', 'customer_company');
        $this->forge->dropColumn('customers', 'init_amount');
        $this->forge->dropColumn('customers', 'account_no');
    }
}