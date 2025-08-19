<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AddCustomerTypeToCustomersTable extends Migration
{
    public function up()
    {
        $this->forge->addColumn('customers', [
            'customer_type' => [
                'type'       => 'VARCHAR',
                'constraint' => '50',
                'default'    => 'private',
            ],
        ]);
    }

    public function down()
    {
        $this->forge->dropColumn('customers', 'customer_type');
    }
}
