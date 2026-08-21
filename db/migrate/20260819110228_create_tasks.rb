class CreateTasks < ActiveRecord::Migration[8.1]
  def change
    create_table :tasks do |t|
      t.timestamps
      t.string :name
      t.string :description
      t.references :project, null: false, foreign_key: true
    end
  end
end
