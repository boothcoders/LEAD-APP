class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :writer_id
      t.integer :receiver_id
      t.integer :goal_id
      t.integer :interaction_id
      t.integer :request_id
      t.text :qualitative_fb
      t.integer :quantitative_fb

      t.timestamps

    end
  end
end
