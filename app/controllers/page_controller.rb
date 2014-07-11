class PageController < ApplicationController
  before_action :authenticate_user!

  def show
    @projects = Project.all
    @user = current_user
    @finished_projects = FinishedProject.all
  end

end
