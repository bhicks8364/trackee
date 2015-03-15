class RemoveOldTables < ActiveRecord::Migration
  def up
    Company.all.each do |c|
      Account.create(name: c.name, email: c.email)
    end
    
    Employee.all.each do |e|
      Account.create(name: e.name, email: e.email)
    end
    
    drop_table :companies
    drop_table :employees
  end
  
  def down
  end
  
end
