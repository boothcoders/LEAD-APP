class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :enterer_id
      t.integer :enteree_id
      t.integer :goal_id
      t.integer :interaction_id
      t.datetime :entry_date
      t.text :entry_note
      t.integer :entry_rating
      t.integer :request_id

      t.timestamps null: false
    end
  end
end
