class FinishedProjectsController < ApplicationController
  before_action :set_finished_project, only: [:show, :edit, :update, :destroy]

  # GET /finished_projects
  # GET /finished_projects.json
  def index
    @finished_projects = FinishedProject.all
  end

  # GET /finished_projects/1
  # GET /finished_projects/1.json
  def show
  end

  # GET /finished_projects/new
  def new
    @finished_project = FinishedProject.new
  end

  # GET /finished_projects/1/edit
  def edit
  end

  # POST /finished_projects
  # POST /finished_projects.json
  def create
    @finished_project = FinishedProject.new(finished_project_params)

    respond_to do |format|
      if @finished_project.save
        format.html { redirect_to @finished_project, notice: 'Finished project was successfully created.' }
        format.json { render :show, status: :created, location: @finished_project }
      else
        format.html { render :new }
        format.json { render json: @finished_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finished_projects/1
  # PATCH/PUT /finished_projects/1.json
  def update
    if @finished_project.update(finished_project_params)
      redirect_to root_path
    else
      render :new
    end
  end

  # DELETE /finished_projects/1
  # DELETE /finished_projects/1.json
  def destroy
    @finished_project.destroy
    respond_to do |format|
      format.html { redirect_to finished_projects_url, notice: 'Finished project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finished_project
      @finished_project = FinishedProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finished_project_params
      params.require(:finished_project).permit(:student_id, :project_id, :submitted, :repo)
    end
end
