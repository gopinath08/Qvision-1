<?php


class account_table
{
    private $conn;
    public $name;
    public function __construct($db)
	{
		$this->conn = $db;
	}
	
	function getaccounts()
	{
		$query = "SELECT id, type, description, created_by, created_on, modified_by, modified_on FROM accounts";		
		$stmt = $this->conn->prepare($query);
		$stmt->execute();
		return $stmt;
	}

    function getLedger_view()
	{
		$query = "SELECT id, code, name, accounts_id, pl_group_id, bs_group_id, created_by, created_on, modified_by, modified_on FROM accounts_ledger";		
		$stmt = $this->conn->prepare($query);
		$stmt->execute();
		return $stmt;
	}
}