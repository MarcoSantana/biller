class RemoveOldTables < ActiveRecord::Migration
  def up
    Customer.all.each do |customer|
      Account.create(name: customer.name, email: customer.email)
    end
    Employee.all.each do |employee|
      Account.create(name: employee.name, email: employee.email)
    end
    drop_table :customers
    drop_table :employees
  end
  
  def down
  end
end
