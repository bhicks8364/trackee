class JobOrder < ActiveRecord::Base
    belongs_to :company
    has_and_belongs_to_many :employees, :join_table => "employee_job_orders"
    
    validates :name, presence: true, length: {in: 1..25}
                 
    
    
    
end
