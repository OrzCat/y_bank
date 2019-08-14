class AdminController < ApplicationController
  def index
    @companies = Admin::Company.enabled.order("RAND()").limit(5)
    @jobs = Admin::Job.enabled.order("RAND()").limit(10)
  end
end
