class Project < ActiveRecord::Base

  has_many :finished_projects
  has_many :students, through: :finished_projects

end
