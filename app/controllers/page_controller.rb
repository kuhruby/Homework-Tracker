class PageController < ApplicationController
  def show
    # binding.pry
    @projects = Project.all
    @student = Student.last
    # binding.pry
    @finished_projects = FinishedProject.all
  end
end
