class CreateGoalAttempts < ActiveRecord::Migration
  def change
    create_table :goal_attempts do |t|
      t.integer :user_id
      t.integer :goal_id
      t.datetime :started_on
      t.datetime :ended_on

      t.timestamps null: false
    end
  end
end
