class ChangeNameToUser < ActiveRecord::Migration[5.2]
  def change
  	
  	User.in_batches(of: 10) do |batch|
  	   batch.update_all(first_name: 'Kevin')	
  	   sleep(0.01)
  	
  	end
  end
end
