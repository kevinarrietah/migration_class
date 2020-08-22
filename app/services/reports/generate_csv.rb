class Reports::GenerateCsv
	include Sidekiq::Worker
	 
	 def call
	 	  Report.create(content: users_content.join("\n"))
	 end


    private
	
	def users_content
	    User.find_each.map do |user|
	    [
	     user.email, 
	     user.last_name, 
	     user.first_name, 
	     user.created_at, 
	     user.updated_at
	    ].join(',')
	    end
	   
	end		 
	
end