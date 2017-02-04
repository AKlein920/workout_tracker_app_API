class AddColumnDefaultsToWorkouts < ActiveRecord::Migration[5.0]
  def change
    change_column_default :workouts, :editable, true
    change_column_default :workouts, :stick, true
  end
end
