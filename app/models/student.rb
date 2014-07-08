class Student < ActiveRecord::Base

  has_many :finished_projects
  has_many :students, through: :finished_projects

  def project_for(assignment)
    finished_projects.find_by project_id: assignment.id
  end

end
