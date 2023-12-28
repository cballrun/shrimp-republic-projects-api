class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.string :description
      t.string :features
      t.string :classification
      t.string :stage
      t.string :start
      t.string :end

      t.timestamps
    end
  end
end
