class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :finished_projects
  has_many :projects, through: :finished_projects

  def project_for(assignment)
    finished_projects.find_by project_id: assignment.id
  end

end
