class Workout < ActiveRecord::Base
  has_many :exercises, through: :workout_exercises
end
