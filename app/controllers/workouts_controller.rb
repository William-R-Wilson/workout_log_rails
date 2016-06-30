class WorkoutsController < ApplicationController

  respond_to :js, :html

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    @workout.update_attributes(workout_params)
  end

  private

    def workout_params
      params.require(:workout).permit(:date)
    end

end
