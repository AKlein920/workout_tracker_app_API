class FixWasAClassColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :workouts, :was_a_class, :boolean
    add_column :workouts, :was_a_class, :string
  end
end
