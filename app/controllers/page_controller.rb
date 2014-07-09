class PageController < ApplicationController

  def show
    @projects = Project.all
    @student = Student.last
    @finished_projects = FinishedProject.all
  end

end
