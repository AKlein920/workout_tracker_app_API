class AddGroupClassColumnToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :was_a_class, :boolean
  end
end
