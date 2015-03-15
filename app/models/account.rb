class Account < ActiveRecord::Base
    has_paper_trail
    has_many :account_entries, dependent: :destroy
    
    validates :name, presence: true, 
                     length: {in: 1..40,
                             message: "Please use vaild name."},
                     uniqueness: true
    validate :your_name_is_not_dumb
    
    def your_name_is_not_dumb
        if name.include?("dumb")
            errors.add(:name, "is dumb")
        end
    end
    
    def update_balance!
        self.balance = self.account_entries.approved.sum(:amount)
        self.save
    end


                     
                     
                     
    
end
