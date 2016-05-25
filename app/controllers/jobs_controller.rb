class JobsController < ApplicationController
  def index
    @jobs = Job.all
    if params[:search]
      @jobs = Job.search_by_any_word(params[:search])
    else
      @jobs = Job.all.order('created_at DESC')
    end
  end
end