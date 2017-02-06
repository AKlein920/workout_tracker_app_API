class ChangeColumnNameToWasClass < ActiveRecord::Migration[5.0]
  def change
    rename_column :workouts, :was_a_class, :was_class
  end
end
