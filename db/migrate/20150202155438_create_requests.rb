class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :requestor_id
      t.integer :requestee_id
      t.integer :interaction_id
      t.integer :goal_id
      t.text :feedback_note
      t.boolean :feedback_completed

      t.timestamps null: false
    end
  end
end
