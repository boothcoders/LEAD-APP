class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.integer :user_id
      t.date :occurs_on
      t.time :occurs_at
      t.integer :goal_id
      t.string :description
      t.integer :experiment_id

      t.timestamps

    end
  end
end
