class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.date :starts_on
      t.date :ends_on
      t.text :description

      t.timestamps

    end
  end
end
