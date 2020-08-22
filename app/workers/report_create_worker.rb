class ReportCreateWorker
	include Sidekiq::Worker
	sidekiq_options queue: 'critical'
	def perform()
	    Reports::GenerateCsv.new.call
	end		 
	
end