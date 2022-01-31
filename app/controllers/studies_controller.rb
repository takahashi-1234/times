class StudiesController < ApplicationController
  def new
    @study=Study.last
    @studies=Study.all
  end
  def create
    Study.create(time: Time.now,data: Date.today)
    redirect_to root_path
  end
end
