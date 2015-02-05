class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.integer :user_id
      t.string :interaction_title
      t.datetime :interaction_date
      t.text :interaction_notes

      t.timestamps null: false
    end
  end
end
