class ChangeWorkoutsTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :workouts, :type, :title
    add_column :workouts, :start, :date
    add_reference :workouts, :user, foreign_key: true
    add_column :workouts, :editable, :boolean
    add_column :workouts, :className, :string
    add_column :workouts, :backgroundColor, :string
  end
end
