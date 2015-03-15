class Employee < Account
    has_many :time_entries
    has_and_belongs_to_many :job_orders, :join_table => "employee_job_orders"

    
    
    def total_hours
        time_entries.sum(:time)
    end
    
    def log_time(amount, company)
        TimeEntry.create(time: amount, employee: self, account: company)
    end
    
    
    
end
