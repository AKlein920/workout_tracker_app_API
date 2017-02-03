class RemoveClassFromWorkouts < ActiveRecord::Migration[5.0]
  def change
    remove_column :workouts, :class, :string
  end
end
