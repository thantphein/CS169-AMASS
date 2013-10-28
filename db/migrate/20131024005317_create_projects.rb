class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :organization
      t.text :blurb
      t.text :nonprofit_mission
      t.text :description
      t.datetime :deadline
      t.string :status
      t.integer :budget

      t.timestamps
    end
  end
end
