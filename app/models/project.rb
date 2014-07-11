class Project < ActiveRecord::Base

  has_many :finished_projects
  has_many :users, through: :finished_projects

end
