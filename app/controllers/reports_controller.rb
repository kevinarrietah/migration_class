class ReportsController < ApplicationController
  
  def index
  end

  def create
     ReportCreateWorker.perform_async
  end
end
