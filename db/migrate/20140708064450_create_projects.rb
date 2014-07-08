class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.date :assigned
      t.date :due

      t.timestamps
    end
  end
end