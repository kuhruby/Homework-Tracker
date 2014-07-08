class CreateFinishedProjects < ActiveRecord::Migration
  def change
    create_table :finished_projects do |t|
      t.references :student, index: true
      t.references :project, index: true
      t.boolean :submitted
      t.string :repo

      t.timestamps
    end
  end
end
