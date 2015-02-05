class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :goal_name
      t.text :goal_description

      t.timestamps null: false
    end
  end
end
