class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.date :posted
      t.string :position
      t.string :location
      t.text :description
      t.string :url
      t.string :job_type

      t.timestamps null: false
    end
  end
end
