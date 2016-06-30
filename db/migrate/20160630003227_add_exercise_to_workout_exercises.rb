class AddExerciseToWorkoutExercises < ActiveRecord::Migration
  def change
    add_reference :workout_exercises, :workout, index: true
  end
end
