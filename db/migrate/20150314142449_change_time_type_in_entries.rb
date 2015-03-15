class ChangeTimeTypeInEntries < ActiveRecord::Migration
   def change
    change_column :account_entries, :time, :decimal
   end
end
