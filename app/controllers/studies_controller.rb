class StudiesController < ApplicationController
  def new
    @study=Study.last
    @study_dates=StudyDate.all
  end
  def create
    @study_date=StudyDate.find_by(study_date: Date.today)
    if @study_date.nil?
      @study_date=StudyDate.create(study_date: Date.today)
    end
    Study.create(time: Time.now, study_date_id: @study_date.id)
    redirect_to root_path
  end
end
