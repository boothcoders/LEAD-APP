class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :name
      t.text :description
      t.integer :goal_id

      t.timestamps

    end
  end
end
