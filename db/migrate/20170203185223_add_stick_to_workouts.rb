class AddStickToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :stick, :boolean
  end
end
