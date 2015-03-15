class OppsNoCustomers < ActiveRecord::Migration
  def change
    add_column :employee_job_orders, :company_id, :integer
    remove_column :employee_job_orders, :customer_id
  end
end
