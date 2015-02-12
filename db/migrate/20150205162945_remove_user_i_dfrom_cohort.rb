class RemoveUserIDfromCohort < ActiveRecord::Migration
  def change
    remove_column :cohorts, :user_id
  end
end
