class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.string :type
      t.string :duration
      t.string :time_of_day
      t.string :location
      t.text :equipment_used
      t.string :class
      t.text :notes
      t.integer :calories_burned
    end
  end
end
