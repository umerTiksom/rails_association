class CreateProjects < ActiveRecord::Migration[8.1]
  def change
    create_table :projects do |t|
      t.timestamps
      t.string :tittle
      t.references :user, foreign_key: true
    end
  end
end
