class FillUsersTable < ActiveRecord::Migration[5.2]
  
    def up
  	  2000.times do
        User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email

      	)  		
  	 end
    end

  	def down
  	    User.limit(2000).delete_all
  	end
  

end
