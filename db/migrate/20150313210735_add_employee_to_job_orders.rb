class AddEmployeeToJobOrders < ActiveRecord::Migration
  def change
    add_column :job_orders, :employee_id, :integer
    add_column :employee_job_orders, :job_order_id, :integer
    remove_column :employee_job_orders, :project_id
  end
end
