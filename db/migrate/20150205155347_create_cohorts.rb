class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.integer :user_id
      t.string :cohort_name

      t.timestamps null: false
    end
  end
end
