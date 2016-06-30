class AddWorkoutToWorkoutExercises < ActiveRecord::Migration
  def change
    add_reference :workout_exercises, :exercise, index: true
  end
end
