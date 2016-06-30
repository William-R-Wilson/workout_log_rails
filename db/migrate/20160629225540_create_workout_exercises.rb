class CreateWorkoutExercises < ActiveRecord::Migration
  def change
    create_table :workout_exercises do |t|
      t.integer :time_in_seconds
      t.integer :num_reps
      t.integer :num_sets
      t.integer :weight

      t.timestamps null: false
    end
  end
end
