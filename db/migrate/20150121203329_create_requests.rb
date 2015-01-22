class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :requester_id
      t.integer :requested_id
      t.integer :goal_id
      t.integer :interaction_id

      t.timestamps

    end
  end
end
