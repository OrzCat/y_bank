class PageController < ApplicationController
  def index
    @companies = Admin::Company.enabled.order("RAND()").limit(5)
    @jobs = Admin::Job.enabled.order("RAND()").limit(10)
  end

  def companies
    @companies = Admin::Company.enabled
  end

  def jobs
    @jobs = Admin::Job.enabled
  end

  def company
    @company = Admin::Company.enabled.find_by_id(params[:id])
    @jobs = @company.jobs.enabled
  end

  def job
    @job = Admin::Job.enabled.find_by_id(params[:id])
  end
end
