class EmployeesJobOrders < ActiveRecord::Migration
  def change
    create_table :employee_job_orders do |t|
      t.belongs_to :employee, :job_order
      t.integer :company_id
      
      t.timestamps
    end
  end
end