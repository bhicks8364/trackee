class AddToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :name, :string
    add_column :companies, :contact_name, :string
    add_column :companies, :email, :string
    add_column :companies, :address, :string
    add_column :companies, :payroll_total, :decimal
    
  end
end
