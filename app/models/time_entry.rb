class TimeEntry < AccountEntry
    belongs_to :employee
    
    before_create :calculate_amount!


    
    
    def self.per_hour
        34.00
    end
    
    def calculate_amount!
	    self.amount = TimeEntry.per_hour * self.time
    end
    
    
    
    
end
