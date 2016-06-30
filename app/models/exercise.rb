class Exercise < ActiveRecord::Base

  has_many :workouts, through: :workout_exercises

end
