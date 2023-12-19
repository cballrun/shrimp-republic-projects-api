class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.string :description
      t.string :features
      t.integer :classification
      t.integer :stage
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
